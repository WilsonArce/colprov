json.extract! product, :id, :user_id, :codigo, :nombre, :descripcion, :precio, :estado, :created_at, :updated_at
json.url product_url(product, format: :json)
