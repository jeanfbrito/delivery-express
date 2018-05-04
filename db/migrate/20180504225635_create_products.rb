class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.float :price_nf
      t.text :description

      t.timestamps
    end
  end
end
