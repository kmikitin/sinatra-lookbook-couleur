class Look < ActiveRecord::Base
	has_many_and_belongs_to_many :tags
	belongs_to :color
end