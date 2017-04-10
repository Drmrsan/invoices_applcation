require 'rails_helper'

RSpec.describe User, type: :model do
	before(:each) do
		@user = User.create!(email: "pera@example.com",
												 password: "asdfasf",
												 first_name:"Pera",
												 last_name: "Kojot",
												 website: "drmrsan.com",
												 address: "Imaginery Street",
												 postal_code: "6554",
												 city: "Zimbabwe",
												 phone: "334 554 667",
												 company_logo: "logo.jpg",
												 company_name: "Google inc")

	end

	describe "validations" do
		it "should not let user be created without first_name" do
			@user.first_name = nil
			expect(@user).to_not be_valid
		end

		it "should not let user be created without last name" do
			@user.last_name = nil
			expect(@user).to_not be_valid
		end

	end
end