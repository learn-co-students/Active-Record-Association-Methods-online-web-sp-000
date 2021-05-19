require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # binding.pry
    #doesn't work because self.artist_id = nil
    drake = Artist.find_or_create_by(name:"Drake")
    self.artist = drake
  end
end