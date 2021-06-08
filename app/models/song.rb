require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
      #drake = Artist.new(id:1, name:"Drake")
      #1. Check to see if Drake exists in the database as an artist 
       #binding.pry
      if Artist.find_by(name:"Drake") 
        #3.If Drake is found as an artist, then assign Drake as the song's Artist
           self.artist = drake
      else 
        #2. If Drake is not found, create Drake in the Artist database
            drake = Artist.new(id:1, name:"Drake")
      end 
  end
end