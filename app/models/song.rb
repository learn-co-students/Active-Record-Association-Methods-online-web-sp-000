require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.where("name = ?", "Drake").first
    if !drake
      drake = Artist.create(name: "Drake")
      drake.save
    end
    drake.songs << self
  end
end