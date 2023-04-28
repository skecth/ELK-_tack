class OrderItem < ApplicationRecord
  searchkick
  belongs_to :purchase_order
  belongs_to :item
end
