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
    @songs = Song.all.sort_by{|song| song.title}
  end

  def edit
    @song = Song.find(params[:id])
    @artist = Artist.find(params[:artist_id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      @errors = @song.errors
      render :edit
    end
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end

end