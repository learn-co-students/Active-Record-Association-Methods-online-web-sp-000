class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.find_by(name: "Drake")
      self.artist = Artist.find_by(name: "Drake")
    else
      new_artist = Artist.create(name: "Drake")
      self.artist = new_artist
    end
    
  end
  
  
end