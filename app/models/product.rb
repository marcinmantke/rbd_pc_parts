class Product < ApplicationRecord
  belongs_to :category

  before_save :set_shop_id

  def set_shop_id
    self.shop_id = :shop_1
  end
end
