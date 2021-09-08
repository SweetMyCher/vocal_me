class CreateUserTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_texts do |t|
      t.string :name
      t.text :text
      t.belongs_to :user
      t.belongs_to :text

      t.timestamps
    end
  end
end
