class Merchant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :business_name, :address1, :address2, :state, :zip, :business_type, :website_url, :password

 	attr_accessor :password
end
