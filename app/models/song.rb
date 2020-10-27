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
    # User.find_or_create_by(first_name: 'PenÃ©lope')
    d = Artist.find_or_create_by(name: 'Drake')
    self.artist = d
    # Song.drake_made_this
    # artists have many songs and songs belong to artist
  end
end