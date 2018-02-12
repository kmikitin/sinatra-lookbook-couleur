class Tag < ActiveRecord::Base

	has_many_and_belong_to_many :looks

end