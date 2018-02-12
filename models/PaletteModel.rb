class Palette < ActiveRecord::Base
	has_many :colors
	has_many :users
end