class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :name
      t.text :description
      t.string :invoice_number
      t.string :currency
      t.datetime :date
      t.string :invoice_due
      t.integer :item_id
      t.integer :user_id
      t.integer :client_id
      t.string :tax
      t.text :invoice_note

      t.timestamps
    end
  end
end
