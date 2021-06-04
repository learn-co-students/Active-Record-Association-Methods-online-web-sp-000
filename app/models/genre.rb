class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    s = self.songs
    s.count
  end

  def artist_count
    a = self.artists
    a.count
  end

  def all_artist_names
    self.artists.collect do |a|
      a.name
    end
  end
end
