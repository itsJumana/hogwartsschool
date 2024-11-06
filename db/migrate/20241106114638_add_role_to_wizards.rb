class AddRoleToWizards < ActiveRecord::Migration[7.1]
  def change
    add_column :wizards, :role, :string, default: Wizard::WIZARD_ROLE
  end
end
