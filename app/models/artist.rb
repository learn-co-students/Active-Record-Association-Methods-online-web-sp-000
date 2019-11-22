class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    return Artist.all.first.songs.first.genre
  end

  def song_count
    return self.songs.length
  end

  def genre_count
    return self.genres.count
  end
end
