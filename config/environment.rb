require './app'

# `settings` is defined in sinatra we want to also 
# allow the live preview to reload on changes if we 
# are in development mode
if settings.development?
  require "sinatra/reloader"

  # we would also like a nicer error page in development
  require 'better_errors'
  require 'binding_of_caller'
  use(BetterErrors::Middleware)
  BetterErrors.application_root = __dir__
end

# we use the `set` method with the :port argument to 
# set what port our live preview shows when we run 
# `ruby app.rb`
set(:port, 3000)

# To open .html.erb files, need to register them
Tilt.register(Tilt::ERBTemplate, 'html.erb')

# alternative to setting the layout in every erb() call
# we can set the default layout name to use and sinatra 
# will look for that file
set(:erb, :layout => :application_layout)
