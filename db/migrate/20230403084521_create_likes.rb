class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :post
      t.references :user
      t.integer :like_count


      t.timestamps
    end
  end
end
