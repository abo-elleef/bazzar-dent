class Feature < ApplicationRecord
  belongs_to :product, optional: false
  validates_presence_of :key, :value
end
