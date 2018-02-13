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
		p '---------------'
		p params

		p params[:palette_id]

		@user.username = params[:username]
		@user.password = params[:password]
		@user.name = params[:name]
		@user.email = params[:email]
		@user.palette_id = params[:palette_id]
		@user.save

		session[:logged_in] = true
		session[:username] = @user.username
		session[:user_id] = @user.id
		# session[:message] = "Thank you for signing up!"
		p '--------------'
		p @user

		@user.to_json

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

		# these are just notes/ideas of where to start
		# @user = User.find params[:id]
		# @user.palette_id

		# @colors = Color.find 
	end

	# edit
	get '/edit/:id' do
	end

	# update
	put '/:id' do
	end

end
