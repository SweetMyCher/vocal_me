class AddGenreIdToArtistsTable < ActiveRecord::Migration[6.1]
  def change
    change_table :artists do |t|
      t.belongs_to :genre
    end
  end
end
