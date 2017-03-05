class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :website
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :phone
      t.integer :user_id
      t.integer :invoice_id

      t.timestamps
    end
  end
end
