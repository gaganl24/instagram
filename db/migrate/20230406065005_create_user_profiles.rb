class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :bio
      t.string :add_link

      t.timestamps
    end
  end
end
