class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
  end

  def detroy
  end

  def create
    @song = Song.new(song_params)
  end

  def song_params
    params.require(:songs).permit(:title, :released, :release_year, :artist_name, :genre)
  end

end
