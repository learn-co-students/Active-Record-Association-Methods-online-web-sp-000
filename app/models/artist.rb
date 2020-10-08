class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    selected = Song.find(1)
    return selected.genre
  end

  def song_count
    #return the number of songs associated with the artist
    byArtist = 0
    Song.all.each do | selected |
      if selected.artist == self
        byArtist += 1
      end
    end
    return byArtist
  end

  def genre_count
    #return the number of genres associated with the artist
    genresHad = 0
    Genre.all.each do | selected |
      if selected.artists.include?(self)
        genresHad += 1
      end
    end
    return genresHad
  end
end
