class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :name
      t.string :qty
      t.string :rate
      t.string :amount
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
