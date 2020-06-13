class Destination < ActiveRecord::Base
  belongs_to :trip
  has_many :components, dependent: :destroy
end
