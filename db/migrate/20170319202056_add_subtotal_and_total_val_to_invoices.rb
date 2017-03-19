class AddSubtotalAndTotalValToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :subtotal, :decimal, precision: 15, scale: 2
    add_column :invoices, :total, :decimal, precision: 15, scale: 2
  end
end
