class AddToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :email, :string
  	add_column :users, :first_name, :string
  end
end
