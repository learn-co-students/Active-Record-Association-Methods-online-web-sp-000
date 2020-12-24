class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake_object = Artist.find_by(name: "Drake")
    if !drake_object
      drake_object = Artist.create(name:"Drake")
    end

    self.artist = drake_object
  end
end
