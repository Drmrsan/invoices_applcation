class ChangeTaxToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :invoices, :tax, 'integer USING CAST(tax AS integer)'
  end
end
