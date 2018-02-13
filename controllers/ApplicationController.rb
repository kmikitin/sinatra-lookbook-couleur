class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

		# have to register cross origin to use (it's for CORS errors)
	register Sinatra::CrossOrigin

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'lookbook'
		)

	# have to configure cross origin to use 
	configure do
		enable :cross_origin
	end

	set :allow_origin, :any
	set :allow_methods, [:get, :post, :options, :put, :delete]
	set :allow_credentials, true



	not_found do
		'not found'
	end

	options "*" do
		response.headers["Allow"] = "HEAD, GET, PUT, POST, DELETE, OPTIONS"
		response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
	end

	get '/' do
		@palettes = Palette.all

		puts @palettes.to_json

		@palettes.to_json
	end


end