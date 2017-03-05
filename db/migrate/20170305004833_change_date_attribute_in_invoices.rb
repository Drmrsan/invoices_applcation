class ChangeDateAttributeInInvoices < ActiveRecord::Migration[5.0]
  def change
  	change_column :invoices, :date, :date
  end
end
