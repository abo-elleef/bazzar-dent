class Product < ApplicationRecord
 has_many :highlights, dependent: :destroy
 has_many :features, dependent: :destroy
 has_many :medias, dependent: :destroy

 def related_products
    Product.where.not(id: id).limit(4)
 end
end
