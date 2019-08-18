class Song < ActiveRecord::Base
  belongs_to :genre
  # has_many :artists, through: :genre
  belongs_to :artist
  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artist = Artist.find_or_create_by(name: "Drake")

  end
end
