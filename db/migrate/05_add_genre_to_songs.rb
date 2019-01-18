class AddGenreToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :genre_id, :integer, null: false
  end
end