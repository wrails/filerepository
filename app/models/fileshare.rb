class Fileshare < ApplicationRecord
	
	has_many :sharings, dependent: :destroy

	has_many :users, through: :sharings

	has_many :categorings, dependent: :destroy

	has_many :categories, through: :categorings

	has_many :keywordings, dependent: :destroy

	has_many :keywords, through: :keywordings
end



