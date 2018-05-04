json.extract! client, :id, :name, :ng, :corporate_name, :cnpj, :phone, :address, :district, :city, :email, :best_hours, :delivery_hours, :receipt, :gstreet_link, :created_at, :updated_at
json.url client_url(client, format: :json)
