class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash.notice = "Artist '#{@artist.name}' Created!"
      redirect_to artist_path(@artist)
    else
      @errors = @artist.errors
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      flash.notice = "Artist '#{@artist.name}' Updated!"
      redirect_to @artist
    else
      @errors = @artist.errors
      render :new
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.delete
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image_path)
  end
  
end