# require 'bcrypt'

class User < ActiveRecord::Base

	has_one :palette
	has_many :colors, :through => :palette
	# has_secure_password

	# def password
	# 	@password ||= Password.new(password_hash)
	# end

	# def password=(new_password)
	# 	@password = Password.create(new_password)
	# 	self.password_hash = @password_hash
	# end

end
