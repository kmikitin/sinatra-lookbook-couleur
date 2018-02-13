class Look < ActiveRecord::Base
	has_and_belongs_to_many :tags
	belongs_to :color
end