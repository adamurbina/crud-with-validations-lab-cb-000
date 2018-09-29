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
  end

  def update
  end

  def detroy
  end

  def create
  end

end
