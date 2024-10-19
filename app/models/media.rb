class Media < ApplicationRecord
  self.table_name = "medias"
  belongs_to :product, optional: false

  # add validation here to have only one her image per product
  # add enum for media kind , pdf , image , video
  # pdf or image can be uploaded , video is a url for a youtube video

end
 