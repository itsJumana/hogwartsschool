class AddDeviseToWizards < ActiveRecord::Migration[7.1]
  def change
    change_table :wizards do |t|
      ## Database authenticatable
      # t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable (uncomment if you need these fields)
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable (uncomment if you need these fields)
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable (uncomment if you need these fields)
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    # Add indexes for unique fields
    add_index :wizards, :reset_password_token, unique: true
    # Uncomment the lines below if you added those fields
    # add_index :wizards, :confirmation_token, unique: true
    # add_index :wizards, :unlock_token, unique: true
  end
end
