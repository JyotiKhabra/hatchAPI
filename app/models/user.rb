class User < ApplicationRecord
  has_many :collaborators
  has_many :packing_items
end
