class ChangeSubtotalAndTotalType < ActiveRecord::Migration[5.0]
  def change
  	change_column :invoices, :subtotal, 'integer USING CAST(subtotal AS integer)'
  	change_column :invoices, :total, 'integer USING CAST(total AS integer)'
  end
end
