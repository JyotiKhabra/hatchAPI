class User < ActiveRecord::Base
  has_many :collaborators
  has_many :packing_items
end
