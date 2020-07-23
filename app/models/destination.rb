class Destination < ApplicationRecord
  belongs_to :trip
  has_many :components, dependent: :destroy
end
