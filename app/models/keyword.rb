class Keyword < ApplicationRecord

	has_many :keywordings, dependent: :destroy
	has_many :fileshares, through: :keywordings
end
