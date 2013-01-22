require 'spec_helper'

describe "Home Page" do

	describe "index" do
		it "has the content Sandwich Alliance" do
			visit "/"
			page.should have_content("Sandwich Alliance")
		end
	end
	
end
