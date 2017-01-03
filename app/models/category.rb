class Category < ApplicationRecord
  self.primary_key = :real_id
  has_many :products, dependent: :delete_all

end
