class CreateFollowers < ActiveRecord::Migration[7.1]
  def change
    create_table :followers do |t|
      t.bigint :follower_id, null: false
      t.bigint :followed_id, null: false

      t.timestamps
    end

    add_foreign_key :followers, :wizards, column: :follower_id
    add_foreign_key :followers, :wizards, column: :followed_id
  end
end
