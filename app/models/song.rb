class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    self.artist = Song.find_or_create_drake
  end

  def self.find_or_create_drake
    if Artist.find_by(name: "Drake") == nil
      drake = Artist.create(name: "Drake")
    else
      Artist.find_by(name: "Drake")
    end
  end

end
