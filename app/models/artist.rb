class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
self.songs.count
  end

  def genre_count
self.genres.count
  end
end



#Just like above when we called adele.songs, we now want to call songs on the instance that the method will be called on in the future. How do we do that? Yes, self!
#class Artist
#  def get_first_song
#    self.songs.first
#  end
# end
