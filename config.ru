require 'sinatra/base'
require 'sinatra/activerecord'

# Models
require './models/UserModel'
require './models/TagModel'
require './models/PaletteModel'
require './models/LookModel'
require './models/ColorModel'

# Controllers
require './controllers/ApplicationController'
require './controllers/UserController'
require './controllers/LookController'

# Routes
map('/'){
	run ApplicationController
}

map('/users'){
	run UserController
}

map('/looks'){
	run LookController
}
