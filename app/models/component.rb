class Component < ApplicationRecord
  belongs_to :destination
  has_many :component_items, dependent: :destroy
end
