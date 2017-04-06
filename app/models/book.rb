class Book < ApplicationRecord
	has_many :genres, dependent: :destroy
	validates :title, presence: true
	validates :author, presence: true

	def self.search(search)
		where("title ILIKE ? OR author ILIKE ?", "%#{search}%", "%#{search}%")
	end
end
