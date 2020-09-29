class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.find {|a| a.name == "Drake"}
      self.artist = Artist.find {|a| a.name == "Drake"}
    else 
      self.artist = Artist.create(name: "Drake")
    end
  end

end