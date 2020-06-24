class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    all_artist_names.count
  end

  # def all_artist_names
  #   # return an array of strings containing every musician's name
  # end


def all_artist_names 
      artist_array =[]
      self.songs.each do |song|
      if artist_array.include?(song.artist)
      else 
        artist_array << song.artist.name
      end
    end
      artist_array
    end
    
    
end