class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.boolean :admin, default: false
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
