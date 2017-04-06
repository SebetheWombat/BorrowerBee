class Book < ApplicationRecord
	has_many :genres, dependent: :destroy
	validates :title, presence: true
	validates :author, presence: true
end
