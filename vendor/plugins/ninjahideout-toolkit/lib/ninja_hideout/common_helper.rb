module NinjaHideout
  module CommonHelper

    def hello
      "Hello!"
    end

    def has_css(*args)
      content_for(:extra_head, stylesheet_link_tag(*args))
    end

    def has_js(*args)
      content_for(:extra_head, javascript_include_tag(*args))
    end

    def page_title
      h(@page_title || @title || params[:action].titleize)
    end

    def flash_messages_for(name, opts = {})
      unless flash[name.to_sym].blank?
        opts[:class] = merge_class_names(opts[:class], "flash #{name.to_s.underscore}")
        content_tag(:div, flash[name.to_sym], opts)
      end
    end

    def ul_based_menu(name, opts = {}, &blk)
      opts[:class] = merge_class_names(opts[:class], "#{name}-menu")
      menu = content_tag(:div, content_tag(:ul, capture(&blk)), opts)
      concat(menu, blk.binding)
    end

    def menu_item(*args)
      content_tag(:li, link_to(*args))
    end

    def correct_postfix(time)
      time < Time.now ? "ago" : "from now"
    end

    def copyright_time(start_year = Time.now.year)
      if Time.now.year <= start_year
        return Time.now.year.to_s
      else
        return "#{start_year} &mdash; #{Time.now.year.to_s}"
      end
    end
    
    def clear
      content_tag(:div, "&nbsp;", :class => "clear")
    end
    
    def desc(text)
      content_tag(:p, text, :class => "description-field")
    end

    # Extension for the semantic form builder
    # used to provide a fairly standardised way
    # to access the errors.
    def errs(object, field, prepend_text = "This field")
      object = object.respond_to?(:errors) ? object : instance_variable_get("@#{object}")
      errors = object.errors.on(field)
      if errors
        text = "#{prepend_text || ""} #{errors.to_a.to_sentence(:skip_last_comma => true)}"
        return content_tag(:p, text,:class => "errors-field")
      end
    end

    def analytics(tracker)
      returning "" do |c|
        c << javascript_tag("var gaJsHost = ((\"https:\" == document.location.protocol) ? \"https://ssl.\" : \"http://www.\"); document.write(unescape(\"%3Cscript src='\" + gaJsHost + \"google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E\"));")
        c << javascript_tag("try { var pageTracker = _gat._getTracker(\"#{tracker}\"); pageTracker._trackPageview(); } catch(err) {}")
      end
    end

    private

    def div_with_default_class(class_name, opts = {}, &blk)
      opts[:class] = merge_class_names(opts[:class], class_name)
      contents = content_tag(:div, capture(&blk), opts)
      concat(contents, blk.binding)
    end

    def merge_class_names(current, default)
      current.blank? ? default : "#{current} #{default}"
    end

  end
end