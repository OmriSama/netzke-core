module Netzke::Core
  class ComponentConfig < DslConfigBase
    def set_defaults!
      self.item_id ||= name
      self.klass ||= class_name.try(:constantize) || name.camelize.constantize
    end
  end
end
