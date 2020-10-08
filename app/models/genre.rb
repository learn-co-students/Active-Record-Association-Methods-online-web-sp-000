class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    songsInGenre = 0
    Song.all.each do | selected |
      if selected.genre == self
        songsInGenre += 1
      end
    end
    return songsInGenre 
  end

  def artist_count
    # return the number of artists associated with the genre
    artistsOfGenre = 0
    Artist.all.each do | selected | 
      if selected.genres.include?(self)
        artistsOfGenre += 1
      end
    end
    return artistsOfGenre
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artistNames = []
    Artist.all.each do | selected |
      if selected.genres.include?(self)
        artistNames << selected.name
      end
    end
    return artistNames
  end

end
