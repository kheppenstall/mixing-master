class SongsController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)
    if @song.save
      flash.notice = "Song '#{@song.title}' Created for #{@artist.name}."
      redirect_to song_path(@song)
    else
      @errors = @song.errors
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end





end