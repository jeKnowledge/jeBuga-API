class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :thumbnail
      t.string :background_image
      t.timestamps
    end
  end
end
