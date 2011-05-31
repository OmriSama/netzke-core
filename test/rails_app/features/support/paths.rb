module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /the simple panel page/
      '/panel/simple'

    when /the server caller page/
      '/panel/server_caller'

    when /the component loader page/
      '/panel/component_loader'

    when /the "(.*)" view/
      embedded_components_path(:action => $1.gsub(" ", "_"))

    when /the (.*) test page/
      components_path(:component => $1)

    when /the (.*) page for touch/
      touch_components_path(:component => $1)

    when /the "(.+)" version of the (.*) page/
      components_path(:component => $2, :locale => $1)

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)