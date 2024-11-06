class DropAdministratorsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :administrators
  end
end
