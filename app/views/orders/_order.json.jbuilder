json.extract! order, :id, :cliente, :proveedor, :descripcion, :nota, :estado, :created_at, :updated_at
json.url order_url(order, format: :json)
