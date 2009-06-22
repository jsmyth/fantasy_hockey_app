module NinjaHideout
  
  module PreparesMixin
    def self.included(parent)
      parent.class_eval do
        extend Prepares::ClassMethods
        include Prepares::InstanceMethods
      end
    end
  end
  
  module Prepares
  
    module ClassMethods
    
      def prepares(name, opts = {})
        raise ArgumentError unless opts.is_a?(Hash)
        opts.assert_valid_keys(:instance_var, :model, :except, :only, :params_key, :sluggable_finder, :cache_key, :cache)
        params_key = opts[:params_key] || :id
        use_sluggable_finder = opts[:sluggable_finder] || false
        use_cache = opts[:cache] || false
        cache_method = opts[:cache_key] || ""
        conversion = ""
        instance_var_name = "@#{(opts[:instance_var] || name).to_s.gsub(/^[@]+/, "")}"
        pmodel = get_prepares_model(opts[:model] || name)
        method_name = :"prepares_#{name.to_s.underscore}"
        method =  "def #{method_name}\n"
        method << "   #{instance_var_name} = #{pmodel}.find(params[:#{params_key}]#{conversion})\n"
        method << "end\n"
        before_filter_opts = {}
        before_filter_opts[:except] = opts[:except].to_a unless opts[:except].blank? || opts[:except].to_a.empty?
        before_filter_opts[:only] = opts[:only].to_a unless opts[:only].blank? || opts[:only].to_a.empty?
        class_eval do
          before_filter method_name, before_filter_opts
        end
        self.class_eval method
      end
    
      private
    
      def get_prepares_model(pmodel)
        if pmodel.is_a?(Symbol)
          return pmodel.to_s.classify
        else
          return pmodel.to_s
        end
      end
    
    end
  
    module InstanceMethods # if it needs to be included.
    end
    
  end
  
end