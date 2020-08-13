class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    artists_names = []
    self.artists.each do |artist|
      artists_names << artist.name 
    end 
    artists_names
  end
end
