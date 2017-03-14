class ChangeItemsFieldsFromStringToDecimal < ActiveRecord::Migration[5.0]
  def change
  	change_column :items, :rate, :decimal, precision: 15, scale: 2
  	change_column :items, :amount, :decimal, precision: 15, scale: 2
  end
end
