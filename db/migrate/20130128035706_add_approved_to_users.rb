class AddApprovedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :approved, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :blurb, :text
  end
end
