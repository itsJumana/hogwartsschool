class CreateSpells < ActiveRecord::Migration[7.1]
  def change
    create_table :spells do |t|
      t.references :wizard, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
