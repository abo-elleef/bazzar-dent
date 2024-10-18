class Media < ApplicationRecord
  self.table_name = "medias"
  belongs_to :product, optional: false


  # add validation here to have only one her image per product
  

end
 