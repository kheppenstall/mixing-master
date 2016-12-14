class PlaylistsController < ApplicationController
  
  def index
    @playlists = Playlist.all
  end

  def new
    @songs = Song.all
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      flash.notice = "Playlist '#{@playlist.name}' Created!"
      redirect_to playlist_path(@playlist)
    else
      @errors = @playlist.errors
      @songs = Song.all
      render :new
    end
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def edit
    @playlist = Playlist.find(params[:id])
    @songs = Song.all
  end

  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      flash.notice = "Playlist '#{@playlist.name}' Updated!"
      redirect_to playlist_path(@playlist)
    else
      @errors = @playlist.errors
      render :edit
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end

end