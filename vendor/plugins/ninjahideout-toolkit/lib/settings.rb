class Settings
  CONFIG_PATH = File.join(Rails.root, "config", "site.yml")
  
  cattr_accessor :hash
  self.hash = {}
  
  class << self
    
    def load!
      contents = ERB.new(File.read(CONFIG_PATH)).result
      all = YAML.load(contents).symbolize_keys
      self.hash = all[:default].merge(all[Rails.env.to_sym] || {}).symbolize_keys
      define_accessors(*self.hash.keys)
    end
    
    def define_accessors(*args)
      args.each do |name|
        (class << self; self; end).class_eval do
          define_method(name) { self.hash[name.to_sym] }
          define_method("#{name}=") { |v| self.hash[name.to_sym] = v }
          define_method("#{name}?") { !!self.hash[name.to_sym] }
        end
      end
    end
    
    def method_missing(name, *args, &blk)
      meth = name.to_s
      meth = meth[0..-2] if [??, ?=].include?(meth[-1])
      if respond_to?(meth)
        super
      else
        define_accessors(meth.to_sym)
        send(name, *args)
      end
    end
    
  end
  
  # Automatically load when the file is loaded.
  load!
  
end