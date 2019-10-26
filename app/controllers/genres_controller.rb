class GenresController < ApplicationController
	#before_action :find_genre, only: [:show, :edit, :update]

	def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
	  @genre = Genre.create(genre_params)
	  redirect_to genre_path(@genre)
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(genre_params)
	  redirect_to genre_path(@genre)
	end

	private

		def genre_params
			params.require(:genre).permit(:name)
		end

		# def find_genre
		# 	@genre = Genre.find(params[:id])
		# end	
end