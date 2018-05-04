json.extract! sale, :id, :client_id, :product_id, :price, :average_amount, :created_at, :updated_at
json.url sale_url(sale, format: :json)
