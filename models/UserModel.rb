class User < ActiveRecord::Base
	has_secure_password
	belongs_to :palette
	has_many :colors, :through => :palette


end
