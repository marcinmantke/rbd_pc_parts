json.extract! product, :id, :name, :category_id, :product_code, :description, :count, :shop_id, :created_at, :updated_at
json.url product_url(product, format: :json)