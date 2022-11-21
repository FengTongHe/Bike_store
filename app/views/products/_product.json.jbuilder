json.extract! product, :id, :name, :manufacture, :style, :cost, :price, :comment, :created_at, :updated_at
json.url product_url(product, format: :json)
