class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    all_artist_names.length
  end

  def all_artist_names
    names = []
    self.songs.each do |song|
      names << song.artist.name
    end
    names
  end
end
