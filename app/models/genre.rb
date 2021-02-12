class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    #Song.all.where("genre_id = ?", id).size
    count(songs)
  end

  def artist_count
    # return the number of artists associated with the genre
    Song.all.where("genre_id = ?", id).size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    names = []
    Song.all.where("genre_id = ?", id).collect do |song|
      names << song.artist.name
    end
    names
  end
end
