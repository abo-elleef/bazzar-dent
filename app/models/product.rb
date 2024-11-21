class Product < ApplicationRecord
 has_many :highlights, dependent: :destroy
 has_many :features, dependent: :destroy
 has_many :medias, dependent: :destroy

 def related_products
    Product.where.not(id: id).limit(4)
 end

 def self.ransackable_associations(auth_object = nil)
   ["features", "highlights"]
 end
 def self.ransackable_attributes(auth_object = nil)
   ["active", "created_at", "desc", "highlight_desc", "highlight_title", "id", "id_value", "name", "updated_at"]
 end
end
