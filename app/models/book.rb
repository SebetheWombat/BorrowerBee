class Book < ApplicationRecord
	has_many :genres
	validates :title, presence: true
	validates :author, presence: true
end
