# frozen_string_literal: true

# Add First And Last Name To Users
class AddFirstAndLastNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
