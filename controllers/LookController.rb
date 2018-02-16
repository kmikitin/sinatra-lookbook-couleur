class LookController < ApplicationController

	# new look post route
	post '/newlook' do

		payload = params
		payload = JSON.parse(request.body.read).symbolize_keys

		p '-------------'
		p payload

		@look = Look.new
		@look.link = payload[:link]
		@look.image = payload[:image_link]
		@look.color_id = payload[:color_id]
		@look.save

		p @look
		p 'worked'
	end

	# get route for specific color
	get '/color/:id' do
		p '-----------------'
		p params

		@color = Color.find params[:id]
		p '-----------------'
		p @color

		@looks = @color.looks

		resp = {
			id: @color.id,
			color_name: @color.color_name,
			looks: @looks
		}

		resp.to_json
	end

	# get route for edit
	get '/edit/:id' do
	end

	# put route for edit
	put '/:id' do
	end

	# delete route
	delete '/:id' do
	end

end
