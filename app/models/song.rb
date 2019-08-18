class Song < ActiveRecord::Base
  has_one :genre
  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artis = Artist.find_or_create_by(name: "Drake")

  end
end
