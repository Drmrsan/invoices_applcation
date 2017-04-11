require 'rails_helper'

RSpec.describe Client, type: :model do
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

		@client = Client.create!(
												 first_name:"Pera",
												 last_name: "Kojot",
												 address: "Imaginery Street",
												 company_name: "Google inc",
												 user_id: @user.id)

	end

	describe "validations" do
		it "should not let client be created without first_name" do
			@client.first_name = nil
			expect(@client).to_not be_valid
		end

		it "should not let client be created without last name" do
			@client.last_name = nil
			expect(@client).to_not be_valid
		end

		it "should not let client be created without company name" do
			@client.company_name = nil
			expect(@client).to_not be_valid
		end

		it "should not let client be created without company address" do
			@client.address = nil
			expect(@client).to_not be_valid
		end

	end
end