class ArtistsController < ApplicationController
	before_action :find_artist, only: [:show, :edit, :update]

	def index
		@artists = Artist.all
	end

	def show
		#@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
	  @artist = Artist.create(artist_params)
	  redirect_to artist_path(@artist)
	end

	def edit
		#@artist = Artist.find(params[:id])
	end

	def update
	  #@artist = Artist.find(params[:id])
	  @artist.update(artist_params)
	  redirect_to artist_path(@artist)
	end

	private

		def artist_params
			params.require(:artist).permit(:name, :bio)
		end

		def find_artist
			@artist = Artist.find(params[:id])
		end	
end