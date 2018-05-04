class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :role
      t.string :phone
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
