Rails.application.routes.draw do
  resources 'artists' do
    resources 'songs', only: [:new, :create, :edit, :update]
  end

  resources 'songs', only: [:show, :index, :destroy]

  resources 'playlists', only: [:show, :index, :new, :create]
end
