class Highlight < ApplicationRecord
  belongs_to :product, optional: false

  def self.ransackable_associations(auth_object = nil)
    ["product"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["active", "created_at", "id", "id_value", "product_id", "title", "updated_at"]
  end
 end
 