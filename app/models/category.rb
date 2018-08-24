class Category < ApplicationRecord
	
	has_many :categorings, dependent: :destroy
	has_many :fileshares, through: :categorings

end
