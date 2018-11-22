class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artists = self.songs.map {|song| song.artist}
    artists.size
  end

  def all_artist_names
    artists = self.songs.map {|song| song.artist}
    artists.map {|artist| artist.name}
  end
end
