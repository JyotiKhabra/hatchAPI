class PackingItem < ActiveRecord::Base
  belongs_to :trip
  belongs_to :user
end
