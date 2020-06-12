class Component < ActiveRecord::Base
  belongs_to :destination
  has_many :component_items, dependent: :destroy
end
