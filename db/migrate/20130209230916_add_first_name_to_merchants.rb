class AddFirstNameToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :first_name, :string
    add_column :merchants, :last_name, :string
    add_column :merchants, :email, :string
    add_column :merchants, :business_name, :string
    add_column :merchants, :address1, :string
    add_column :merchants, :address2, :string
    add_column :merchants, :state, :string
    add_column :merchants, :zip, :integer
    add_column :merchants, :business_type, :string
    add_column :merchants, :website_url, :string
  end
end
