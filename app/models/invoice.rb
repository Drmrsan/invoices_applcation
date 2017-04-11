class Invoice < ApplicationRecord
	belongs_to :user
	belongs_to :client
	has_many :items, dependent: :destroy
	accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

	# Invoice validations
	validates :name, :invoice_number, :currency, :subtotal, :total, presence: true
end
