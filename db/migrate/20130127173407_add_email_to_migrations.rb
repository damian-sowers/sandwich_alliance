class AddEmailToMigrations < ActiveRecord::Migration
  def change
    add_column :memberships, :email, :string
    add_column :memberships, :blurb, :text
  end
end
