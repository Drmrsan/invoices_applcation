require 'rails_helper'

RSpec.describe Invoice, type: :model do
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

		@invoice = Invoice.create!(
														name: "Invoice name",
														invoice_number: "222",
														currency: "EUR",
														client_id: 1,
														subtotal: 222,
														total: 222,
														user_id: @user.id,
														client_id: @client.id)
	end

	describe "validations" do
		it "should not let invoice be created without invoice name" do
			@invoice.name = nil
			expect(@invoice).to_not be_valid
		end

		it "should not let invoice be created without invoice_number" do
			@invoice.invoice_number = nil
			expect(@invoice).to_not be_valid
		end

		it "should not let invoice be created without invoice currency" do
			@invoice.currency = nil
			expect(@invoice).to_not be_valid
		end

		it "should not let invoice be created without invoice subtotal" do
			@invoice.subtotal = nil
			expect(@invoice).to_not be_valid
		end

		it "should not let invoice be created without invoice total" do
			@invoice.total = nil
			expect(@invoice).to_not be_valid
		end
	end

end