class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
        self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    artist_list = []
    song_list = self.songs  
    song_list.each  do |s|
      if artist_list.include?(s.artist) != true
        artist_list << s.artist
      end
    end
    artist_list.length
  end

  def all_artist_names
    artist_names = []
  artist_list = []
    song_list = self.songs  
    song_list.each  do |s|
      if artist_list.include?(s.artist) != true
        artist_list << s.artist
      end
    end
    artist_list.each do |a|
      artist_names << a.name
  end
  artist_names
  end
end
