json.extract! product, :id, :name, :cost, :price_nf, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
