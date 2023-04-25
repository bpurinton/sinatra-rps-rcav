require_relative './app'

configure do
  # GitHub pages deployment
  # set :public_folder, './'

  # To open .html.erb files, need to register them
  Tilt.register Tilt::ERBTemplate, 'html.erb'
end

configure :development do
  # need this configure for better errors
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__

  # Show error page until route is created
  not_found do
    status 404
    "
    <h1>HTTP 404: Page not found</h1>
    <h2>Oops, no page found, try creating index.html and navigating to it. Or another page you wish to render.</h2>
    "
  end
end
