json.extract! inventory, :id, :user_id, :product_id, :physical_count, :is_discrepancy, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
