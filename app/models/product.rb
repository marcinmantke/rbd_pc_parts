class Product < ApplicationRecord
  self.primary_key = :real_id
  belongs_to :category
end
