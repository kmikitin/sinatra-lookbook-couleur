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
		@colors = Color.where(palette_id: @user.palette_id)

		# used this to check w/Postman
		# @pwd = params[:password]
		# @user = User.find_by(username: params[:username])

		if @user && @user.authenticate(@pwd)
			session[:username] = @user.username
			session[:user_id] = @user.id
			session[:logged_in] = true
			session[:message] = "Logged in as #{@user.username}"
			resp = {
				id: @user.id,
				palette_id: @user.palette_id,
				colors: @colors,
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

	# logout
	get '/logout' do
		session[:username] = nil
		session[:user_id] = nil
		session[:logged_in] = false
		session[:message] = "You have logged out."

		session[:message].to_json
	end

	# profile
	get'/:id' do

		@user = User.find params[:id]
		# p '----------------'
		# p @user

		@colors = Color.where(palette_id: @user.palette_id)
		# p '----------------'
		# p @colors

		@palette = Palette.find_by(id: @user.palette_id) 
		# p '----------------'
		# p @palette

		@looks = []
		@colors.each { |color| @looks.push(color.looks)}

		# binding.pry
		resp = {
			id: @user.id,
			name: @user.name,
			username: @user.username,
			email: @user.email,
			palette_name: @palette.name,
			colors: @colors,
			looks: @looks
		}

		resp.to_json
	end

	# edit
	get '/edit/:id' do
		@user = User.find params[:id]
		@palette = Palette.find_by(id: @user.palette_id)
		# p '-----------------'
		# p @palette

		resp = {
			id: @user.id,
			name: @user.name,
			email: @user.email,
			palette_name: @palette.name,
			palette_id: @palette.id
		}

		resp.to_json
	end

	# update password
	post '/password' do
		# gonna finish this soon
	end


	# update account
	put '/:id' do
		p '---------------'
		payload = params
		payload = JSON.parse(request.body.read).symbolize_keys
		p payload

		@user = User.find payload[:id]
		@user.name = payload[:name]
		@user.email = payload[:email]
		@user.palette_id = payload[:palette_id]
		@user.save

		@user.to_json
	end

	# delete
	delete '/:id' do
		p params

		@user = User.find params[:id]
		@user.delete

		@user.to_json
	end

end
