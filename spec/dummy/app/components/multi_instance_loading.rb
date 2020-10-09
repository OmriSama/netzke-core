# Subsequent loading of tabs should result in functional "tab" component instances
class MultiInstanceLoading < Netzke::Base
  client_class do |c|
    c.extend = 'Ext.tab.Panel'
  end

  action :load_hello_user
  action :load_hello_user_in_precreated_tab
  action :load_composition
  action :load_config_only

  component :hello_user do |c|
    # client_config is accessible here
    c.user = c.client_config[:user_name]
  end

  component :composition

  def configure(c)
    super
    c.bbar = %i[load_hello_user load_hello_user_in_precreated_tab load_composition load_config_only]
  end
end
