enable :sessions

class UserController < ApplicationController

	# register
	get '/register' do
		@palettes = Palette.all

		@palettes.to_json
	end

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
