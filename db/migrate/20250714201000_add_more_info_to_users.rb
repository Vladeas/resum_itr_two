class AddMoreInfoToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :forename, :string
    add_column :users, :surname, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :phone_number, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :description, :text
    add_column :users, :driving_license, :string
  end
end
