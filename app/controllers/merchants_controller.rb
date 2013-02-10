class MerchantsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@merchant = Merchant.new
	end 

	def create
		@merchant = Merchant.new(params[:merchant])

		if @merchant.save
			#need to make the user account as well.
			@user = User.new
			@user.first_name = @merchant.first_name
			@user.last_name = @merchant.last_name
			@user.email = @merchant.email
			@user.password = @merchant.password
			@user.blurb = @merchant.business_name
			@user.zip = @merchant.zip
			@user.approved = 1
			@user.merchant = 1

			if @user.save
				redirect_to :controller => "merchants", :action => "thanks", only_path: true
			end
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def thanks
	end
end
