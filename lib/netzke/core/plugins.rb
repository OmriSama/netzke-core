module Netzke::Core
  module Plugins
    extend ActiveSupport::Concern

    included do
      # Returns registered plugins
      class_attribute :registered_plugins
      self.registered_plugins = []
    end

    module ClassMethods
      # Defines a plugin
      def plugin(name)
        register_plugin(name)
        component name, eager_load: true do |c|
          yield(c) if block_given?
        end
      end

      private

      # Register a plugin
      def register_plugin(name)
        self.registered_plugins |= [name]
      end
    end

    def plugins
      self.class.registered_plugins
    end
  end
end
