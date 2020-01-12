class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    #we call songs on the instance that the method will be called on in the future by using self!
    #self.songs will return array of the artist's  songs.  For the first song, we just have to chain on a first.
    self.songs.first
  end

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    get_first_song.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count 
    #self.songs.length

  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
    #self.genres.length
  end
end
