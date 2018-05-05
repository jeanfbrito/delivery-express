class AddLocalizationToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :clients, :lng, :decimal, {:precision=>10, :scale=>6}
    add_column :clients, :parking_lat, :decimal, {:precision=>10, :scale=>6}
    add_column :clients, :parking_lng, :decimal, {:precision=>10, :scale=>6}
  end
end
