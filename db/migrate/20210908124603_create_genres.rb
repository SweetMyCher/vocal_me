class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :name
      t.text :description

      t.timestamps
      t.belongs_to :user
    end
  end
end
