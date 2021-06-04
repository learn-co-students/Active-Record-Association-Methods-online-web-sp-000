class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    song = self.songs.first
    song.genre
  end

  def song_count
    s = self.songs
    s.count
  end

  def genre_count
    g = self.genres
    g.count
  end
end
