class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names #check solution to compare my solution may be too long
    # return an array of strings containing every musician's name
    all_names = []
    self.artists.each do |a|
      all_names << a.name
    end
    all_names
  end
end
