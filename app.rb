require 'sinatra'
require 'better_errors'
require 'binding_of_caller'
require "sinatra/reloader" if settings.development?

# get '/' do 
#   send_file(File.join(settings.public_folder, "index.html"))
# end

# get '/:file_name' do |file_name| 
#   send_file(File.join(settings.public_folder, "#{file_name}.html"))
# end

get '/' do
  "<h1>Hello world!</h1>"
end

get '/rock' do
  # can render directly
  # "<h2>We played rock!</h2>"

  # redirect_to is just redirect in sinatra
  # redirect("https://www.wikipedia.org")

  @comp_move = ["rock", "paper", "scissors"].sample
  
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome =  "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  end

  # render method doesn't work, need specific erb method
  # erb(:"game_templates/user_rock")
  erb(:user_rock)#, :layout => :wrapper)
end
