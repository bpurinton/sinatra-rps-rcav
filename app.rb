# first we import sinatra so we have access to its 
# objects and methods
require 'sinatra'

# require the controller
require './controllers/game_controller'

# we define our first route with sinatra's get method
get('/') do
  # we can pass plain text
  # "Hello, world!"

  # we can pass HTML
  # "<h1>Hello, world!</h1>"

  # lets actually setup our homepage
  erb(:rules)#, :layout => :application_layout)
end

# we can define another route to our rock page
get('/rock') do
  # we can simply redirect somewhere
  # redirect("https://www.wikipedia.org")

  # or we can render an html page from the root
  # send_file("rock.html")

  # but even better, we can make a views folder
  # and render a new type of file from there
  # we call the file "views/rock.html.erb"
  erb(:rock)#, :layout => :application_layout)
end

# let's define a paper route
get('/paper') do
  game = GameController.new.paper
  puts game.comp_move
  puts game.outcome
  # puts @game.comp_move
  # puts @game.outcome

  erb(:paper)#, :layout => :application_layout)
end
