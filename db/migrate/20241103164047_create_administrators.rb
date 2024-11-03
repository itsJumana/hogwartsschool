class CreateAdministrators < ActiveRecord::Migration[7.1]
  def change
    create_table :administrators do |t|
      t.references :wizard, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
