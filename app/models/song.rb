class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    binding.pry
   a = Artist.find_or_create_by(name: 'Drake')
   self.artist = a
    #  if self.artist == nil
    #   drake = Artist.new(name: "Drake")
    #   drake.save
    #   self.artist = drake
    #  else
    #   drake = Artist.where('name Drake')
    #   self.artist = drake
    #   end
  end
end