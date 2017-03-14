class ChangeItemsFieldsFromStringToIteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :items, :qty, 'integer USING CAST(qty AS integer)'
  	change_column :items, :rate, 'integer USING CAST(rate AS integer)'
  	change_column :items, :amount, 'integer USING CAST(amount AS integer)'
  end
end
