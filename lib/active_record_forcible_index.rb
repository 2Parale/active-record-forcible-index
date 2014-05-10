module ActiveRecordForcibleIndex
  class << self
    def included(klass)
      klass.class_eval do
        extend ClassMethods
        include InstanceMethods
      end
    end
  end

  module InstanceMethods
  end

  module ClassMethods
    def use_index(index)
      from("#{self.table_name} USE INDEX(#{index})")
    end

    def force_index(index)
      from("#{self.table_name} FORCE INDEX(#{index})")
    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecordForcibleIndex)
