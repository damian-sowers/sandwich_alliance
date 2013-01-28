class UsersController < ApplicationController
	before_filter :admin_only

	def index
		if params[:approved] == "false"
			@users = User.find_all_by_approved(false)
		else
			@users = User.all
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:success] = "User updated successfully"
			redirect_to :controller => "users", :action => "show", :id => @user.id, only_path: true
		end
	end

	private 

		def admin_only
			redirect_to :controller => "home" unless user_signed_in? && current_user.administrator == true
		end
end
