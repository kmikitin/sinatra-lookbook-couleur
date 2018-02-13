# require 'bcrypt'

class User < ActiveRecord::Base
	has_secure_password
	has_one :palette
	has_many :colors, :through => :palette

	# def password
	# 	@password ||= Password.new(password_hash)
	# end

	# def password=(new_password)
	# 	@password = Password.create(new_password)
	# 	self.password_hash = @password_hash
	# end

end
