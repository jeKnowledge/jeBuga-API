class CreateClashRoyales < ActiveRecord::Migration[5.1]
  def change
    create_table :clash_royales do |t|
      t.belongs_to :game
      t.timestamps
    end
  end
end
