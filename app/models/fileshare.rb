class Fileshare < ApplicationRecord

	has_many :sharings, dependent: :destroy

	has_many :users, through: :sharings

	has_many :categorings, dependent: :destroy

	has_many :categories, through: :categorings

	has_many :keywordings, dependent: :destroy

	has_many :keywords, through: :keywordings

	# setter method
	def all_categories=(names)
		self.categories = names.split(',').map do |name|
			Category.where(name: name).first_or_create!
		end
	end

	#getter method
	def all_categories
		categories.map(&:name).join(',')
	end

	# setter method
	def all_keywords=(names)
		self.keywords = names.split(',').map do |name|
			Keyword.where(name: name).first_or_create!
		end
	end

	#getter method
	def all_keywords
		keywords.map(&:name).join(',')
	end
end
