enable :sessions

class UserController < ApplicationController

	# register - get palettes from db and save their ids, names
	get '/register' do
		@palettes = Palette.all

		puts @palettes.to_json

		@palettes.to_json
	end

	# new user post route
	post '/newuser' do
		@user = User.new 
	end

	# login
	get '/login' do
	end

	# profile
	get'/:id' do
	end

	# edit
	get '/edit/:id' do
	end

	# update
	put '/:id' do
	end

end
