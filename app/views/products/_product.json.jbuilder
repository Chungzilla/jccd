json.extract! product, :id, :name, :description, :category_id, :size_id, :colorway_id, :design_id, :created_at, :updated_at
json.url product_url(product, format: :json)
