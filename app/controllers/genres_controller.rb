class GenresController < ApplicationController
	def create
		@book = Book.find(params[:book_id])
		@genre = @book.genres.create(genre_params)
		redirect_to book_path(@book)
	end

	private

	def genre_params
		params.require(:genre).permit(:subject)
	end
end
