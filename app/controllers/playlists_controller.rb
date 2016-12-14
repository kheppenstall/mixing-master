class PlaylistsController < ApplicationController
  
  def index
    @playlists = Playlist.all
  end

  def new
    @songs = Song.all
    @playlist = Playlist.new
  end

  def create
    
    
  end

end