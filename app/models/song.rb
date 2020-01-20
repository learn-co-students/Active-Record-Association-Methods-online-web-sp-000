require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

    drake_instance = nil
    Artist.all.each do |artist|
      if artist[:name] == "Drake"
        drake_instance = artist
      end
    end

    if drake_instance == nil
      drake_instance = Artist.create(name: "Drake")
    end

    self.artist = drake_instance

  end
end
