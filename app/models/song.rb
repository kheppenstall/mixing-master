class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true
  
  belongs_to :artist
end
