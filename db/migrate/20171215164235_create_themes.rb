class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.belongs_to :forum
      t.belongs_to :user
      t.string :name
      t.timestamps
    end
  end
end
