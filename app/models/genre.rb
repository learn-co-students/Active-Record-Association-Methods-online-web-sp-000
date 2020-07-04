class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.all.count
  end

  def artist_count
    Artist.all.count
  end

  def all_artist_names
    Artist.all.map{|artist| artist.name}
  end
end
