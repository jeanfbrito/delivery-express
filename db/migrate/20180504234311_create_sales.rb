class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.float :price
      t.float :average_amount

      t.timestamps
    end
  end
end
