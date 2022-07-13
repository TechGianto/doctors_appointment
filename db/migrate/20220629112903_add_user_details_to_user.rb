class AddUserDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :gender, :string
    add_column :users, :state, :string
    add_column :users, :nationality, :string
    add_column :users, :LGA, :string
    add_column :users, :status, :integer, default: 1 
  end
end
