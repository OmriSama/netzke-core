module ActionDispatch::Routing
  class Mapper
    # Enables routes for Netzke assets and endpoint calls (by default routes to NetzkeController). The default URL is "/netzke", but this can be changed:
    #
    #     netzke "/some/path/netzke"
    #
    # If you want to use your own controller instead of NetzkeController, you can specify it like this:
    #
    #     netzke "/netzke", controller: :admin
    #
    # This will make Netzke use AdminController. Note, that in that case AdminController MUST implement the actions required by Netzke. The way to do this is to include Netzke::Railz::ControllerExtensions in your controller, e.g.:
    #
    #     class AdminController < ApplicationController
    #       include Netzke::Railz::ControllerExtensions
    #     end
    def netzke(prefix = '/netzke', options = {})
      controller = options[:controller] || :netzke

      get prefix.to_s => "#{controller}#index", as: :netzke
      get "#{prefix}/ext(.:format)" => "#{controller}#ext", as: :netzke_ext
      match "#{prefix}/direct" => "#{controller}#direct", as: :netzke_direct, via: [:get, :post]
      match "#{prefix}/dispatcher" => "#{controller}#dispatcher", as: :netzke_dispatcher, via: [:get, :post]
    end
  end
end
