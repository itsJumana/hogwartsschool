class CreateWizards < ActiveRecord::Migration[7.1]
  def change
    create_table :wizards do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :encrypted_password, null: false, default: ""
      t.date :date_of_birth, null: false
      t.text :bio
      t.boolean :muggle_relative, default: false
      t.string :house
      t.string :profile_image

      t.timestamps
    end
    
    # Add a unique index for email after the table is created
    add_index :wizards, :email, unique: true
  end
end
