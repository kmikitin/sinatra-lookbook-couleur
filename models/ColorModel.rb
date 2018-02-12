class Color < ActiveRecord::Base
	has_many :looks
	belongs_to :palette
	has_many :tags, :through => :looks
end