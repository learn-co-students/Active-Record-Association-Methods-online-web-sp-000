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
    
    artists_array=[]
    self.artists.select do |ime|
     artists_array << ime.name    
    end 
       binding.pry
   
  end
end
