module NinjaHideout
  module ControllerMixin
    
    def self.included(parent)
      parent.class_eval do
        include InstanceMethods
        extend  ClassMethods
        helper_method :page_title, :logged_in?, :current_user, :current_user_session
      end
    end
    
    class InvalidUserPermissions < StandardError; end
    
    module InstanceMethods
      private

      def page_is(title)
        @page_title = title
      end

      alias call_page page_is
      alias title= page_is

      def page_title
        return(@page_title || params[:action].humanize)
      end

      def warn_user(message)
        flash[:warning] = message
      end

      def tell_user(message)
        flash[:notice] = message
      end

      def warn_user_now(message)
        flash.now[:warning] = message
      end

      def tell_user_now(message)
        flash.now[:notice] = message
      end

      def setup_auto_redirect
        session[:auto_redirect_to] = request.request_uri
      end

      def perform_auto_redirect
        @@default_auto_redirect_location ||= '/'
        location = session[:auto_redirect_to] || '/'
        session[:auto_redirect_to] = nil
        redirect_to location
        return false
      end
      
      def logged_in?
        !current_user.blank?
      end

      def current_user_session
          @current_user_session ||= UserSession.find
      end

      def current_user
        @current_user ||= current_user_session && current_user_session.user
      end

      def require_authentication
        logged_in? || access_denied
      end

      def disallow_authentication
        if logged_in?
          flash[:error] = "Uh, dude - you can't do that when you're logged in"
          redirect_to '/'
        end
      end

      def access_denied
        # Implement access denied functionality
        # on a per-controller basis if it's different.
        flash[:error] = "Hey, you need to be logged in to do that."
        redirect_to new_user_session_path
      end
      
    end
    
    module ClassMethods

      # Used for defining permissions based on the Model#can_<action>?(user)
      # style of access control. Note that the follow is an example of
      # usage:
      #   permissions :view, :team, :only => :index
      def permissions(name, object_name, *args)
        filter_name = :"check_#{name.to_s.underscore}_permissions"
        define_method(filter_name) do
          current_object = instance_variable_get("@#{object_name.to_s.underscore}")
          if logged_in? and current_user.can(name.to_sym, current_object)
            return true
          else
            raise InvalidUserPermissions
            return false
          end
        end
        before_filter(filter_name, *args)
        private filter_name
      end

      def slugged_prepare(model, *args, &blk)
        model_name    = model.name.underscore
        target_ivar   = "@#{model_name}"
        finder_method = :"slugged_prepare_#{model_name}"
        opts = args.extract_options!
        # Extract the filter options
        filter_opts = {}
        filter_opts[:only]   = opts.delete(:only)   if opts.has_key?(:only)
        filter_opts[:except] = opts.delete(:except) if opts.has_key?(:except)
        # Define the actual finder method.
        define_method finder_method do
          result = model.from_slug(params[:id], (blk ? blk.call : opts))
          raise ActiveRecord::RecordNotFound if result.blank?
          instance_variable_set(target_ivar, result)
        end
        before_filter(finder_method, *(args << filter_opts))
        private finder_method
      end

    end
    
  end
end