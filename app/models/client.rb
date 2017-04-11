class Client < ApplicationRecord
	belongs_to :user
	has_many :invoices

	# Client validations
	validates :company_name, :first_name, :last_name, :address, presence: true
end
