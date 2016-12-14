Rails.application.routes.draw do
  root 'artists#index'

  resources 'artists' do
    resources 'songs', only: [:new, :create, :edit, :update]
  end

  resources 'songs', only: [:show, :index, :destroy]

  resources 'playlists'
end
