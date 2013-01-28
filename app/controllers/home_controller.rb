class HomeController < ApplicationController
	before_filter :authenticate

	def index
	end

	def merchants
	end

	def about
	end

	protected

	def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "alliance" && password == ENV["HOME_PASSWORD"]
    end
  end
end
