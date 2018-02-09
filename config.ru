require 'sinatra/base'
require 'sinatra/activerecord'

# Models


# Controllers
require './controllers/ApplicationController'
require './controllers/UserController'

# Routes
map('/'){
	run ApplicationController
}

map('/users'){
	run UserController
}
