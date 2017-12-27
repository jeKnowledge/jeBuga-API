class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user, default: 1
      t.belongs_to :post, default: 1
      t.string :content
      t.bigint :upvotes, default: 0
      t.bigint :downvotes, default: 0
      t.timestamps
    end
  end
end
