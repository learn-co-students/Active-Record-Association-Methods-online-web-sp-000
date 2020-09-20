class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this #instance method
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    
    # step 1. create drake if he doesn't exist
    if !Artist.find_by(name: "Drake") # if doesnt exist
      drake = Artist.create(name: "Drake") #create is initialize AND save
    else
      drake = Artist.find_by(name: "Drake")
    end
    binding.pry
    # step 2. asssign drake as artist to song
    drake.songs << self
    #i do this way becuase informing hte parent about a child is more powerful than vice versa

  end
end