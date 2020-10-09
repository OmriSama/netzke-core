class ConfigurableOnClassLevel < Netzke::Base
  class_attribute :title
  self.title = 'Default'

  client_class do |c|
    c.title = title
  end
end
