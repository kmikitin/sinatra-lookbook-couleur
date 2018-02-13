enable :sessions

class UserController < ApplicationController

	# register - get palettes from db and save their ids, names
	get '/register' do
		@colors = Color.all

		@colors.to_json
	end

	# new user post route
	post '/newuser' do
		@user = User.new 
	end

	# login
	get '/login' do

		@pw = params[:password]
		@user = User.find_by(username: params[:username])

		if @user && @user.authenticate(@pw)
			session[:username] = @user.username
			session[:user_id] = @user.id
			session[:logged_in] = true
			session[:message] = "Logged in as #{@user.username}"
			redirect '/users'
		else
			session[:message] = "Invalid username or password, please try again"
			redirect '/users/login'
		end


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
