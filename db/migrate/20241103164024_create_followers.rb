class CreateFollowers < ActiveRecord::Migration[7.1]
  def change
    create_table :followers do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
  end
end