class AddUserIdToArtists < ActiveRecord::Migration[6.1]
  def change
    change_table :artists do |t|
      t.belongs_to :user
    end
  end
end
