module SimpleSlugs
  
  def self.included(parent)
    parent.class_eval do
      extend  ClassMethods
      include InstanceMethods
      
      validates_uniqueness_of :slug
      before_validation       :auto_set_slug
      cattr_accessor          :slug_source
      self.slug_source = :name
    end
  end
  
  module ClassMethods
    
    def from_slug(name, *args)
      opts = args.extract_options!
      opts[:conditions] = self.merge_conditions(opts[:conditions], {:slug => name.to_s})
      args << opts
      record = self.first(*args)
      raise ::ActiveRecord::RecordNotFound if record.blank?
      return record
    end
    
  end
  
  module InstanceMethods
    
    def to_param
      self.slug
    end
    
    private
    
    def auto_set_slug
      return if !self.slug.blank? || self[self.slug_source].blank?
      base = self[self.slug_source].parameterize
      text = base
      offset = 0
      while !self.class.find_by_slug(text).blank?
        offset += 1
        text = "#{base}-#{offset}"
      end
      self.slug = text
    end
    
  end
  
end