class Trip < ActiveRecord::Base
  has_many :destinations 
  has_many :collaborators
  has_many :packing_items
end
