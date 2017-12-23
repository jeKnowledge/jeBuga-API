class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.belongs_to :theme
      t.string :title
      t.string :content
      t.bigint :upvotess
      t.bigint :downvotes
      t.timestamps
    end
  end
end
