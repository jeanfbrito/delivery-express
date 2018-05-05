class CreateRouteClients < ActiveRecord::Migration[5.2]
  def change
    create_table :route_clients do |t|
      t.belongs_to :route, foreign_key: true
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
