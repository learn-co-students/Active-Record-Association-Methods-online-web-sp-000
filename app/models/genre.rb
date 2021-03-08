class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length #=> Genres.songs=[].size(songs=[])
  end

  def artist_count
    self.artists.length #=> Genres.artists=[].size(artists=[])
  end

  def all_artist_names
    self.artists.map(&:name) #=> Genres.artists=[].[]+=artists.name
  end
end
