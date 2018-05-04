class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :corporate_name
      t.string :cnpj
      t.string :phone
      t.string :address
      t.string :district
      t.string :city
      t.string :email
      t.string :best_hours
      t.string :delivery_hours
      t.boolean :receipt
      t.string :gstreet_link

      t.timestamps
    end
  end
end
