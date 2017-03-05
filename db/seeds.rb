# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do

	client_company_name = Faker::Company.name
	client_first_name = Faker::Name.first_name
	client_last_name = Faker::Name.last_name
	client_email = Faker::Internet.email
	client_website = Faker::Name.title
	client_address = Faker::Address.street_name
	client_postal_code = Faker::Address.postcode
	client_city = Faker::Address.city
	client_country = Faker::Address.country
	client_phone = Faker::PhoneNumber.cell_phone

	Client.create!(
		company_name: client_company_name,
		first_name: client_first_name,
		last_name: client_last_name,
		email: client_email,
		website: client_website,
		address: client_address,
		postal_code: client_postal_code,
		city: client_city,
		country: client_country,
		phone: client_phone,
		user_id: 5,
		)
end