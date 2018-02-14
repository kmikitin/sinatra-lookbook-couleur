class UserController < ApplicationController

	# new user post route
	post '/newuser' do
		@user = User.new 
		# p '---------------'
		# p params

		# p params[:palette_id]

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
		# p '--------------'
		# p @user

		@user.to_json

	end

	# login
	post '/login' do
		payload = params
		payload = JSON.parse(request.body.read).symbolize_keys

		# p '--------------------'
		# p payload

		@pwd = payload[:password]
		@user = User.find_by(username: payload[:username])

		# used this to check w/Postman
		# @pwd = params[:password]
		# @user = User.find_by(username: params[:username])

		if @user && @user.authenticate(@pwd)
			session[:username] = @user.username
			session[:user_id] = @user.id
			session[:logged_in] = true
			session[:message] = "Logged in as #{@user.username}"
			resp = {
				palette_id: @user.palette_id,
				confirmation: session[:message]
			}
			resp.to_json
		else
			session[:message] = "Invalid username or password, please try again"
			resp = {
				confirmation: session[:message]
			}
			resp.to_json
		end

	end

	# profile
	get'/:id' do

		@user = User.find_by(palette_id: params[:id])
		# p '----------------'
		# p @user

		@colors = Color.where(palette_id: params[:id])
		# p '----------------'
		# p @colors

		@palette = Palette.find params[:id]
		p '----------------'
		p @palette

		resp = {
			id: @user.id,
			name: @user.name,
			username: @user.username,
			email: @user.email,
			palette_name: @palette.name,
			colors: @colors
		}

		resp.to_json
	end

	# edit
	get '/edit/:id' do
	end

	# update
	put '/:id' do
	end

	# delete
	delete '/:id' do
	end

end
