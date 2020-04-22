class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    song = self.songs.first
    song.genre
  end

  def song_count
    #return the number of songs associated with the artist
    s_count = self.songs.all
    s_count.length
  end

  def genre_count
    #return the number of genres associated with the artist
    g_count = self.songs.all
    g_count.length
  end
end
