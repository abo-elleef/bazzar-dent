class Feature < ApplicationRecord
  belongs_to :product, optional: false
  validates_presence_of :key, :value

  def self.ransackable_associations(auth_object = nil)
    ["product"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "key", "product_id", "updated_at", "value"]

  end
end
