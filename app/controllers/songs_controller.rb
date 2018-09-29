class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end



  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def detroy
  end



  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end

end
