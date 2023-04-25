require 'sinatra'
require 'better_errors'
require 'binding_of_caller'
require "sinatra/reloader" if settings.development?

get '/' do 
  send_file(File.join(settings.public_folder, "index.html"))
end

get '/:file_name' do |file_name| 
  send_file(File.join(settings.public_folder, "#{file_name}.html"))
end
