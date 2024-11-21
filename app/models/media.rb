class Media < ApplicationRecord
  self.table_name = "medias"
  belongs_to :product, optional: false
  enum display: {"grid" => "grid", "hero" => "hero"}
  enum kind: {"pdf" => "pdf", "image" => "image", "video" => "video"}

  def self.ransackable_associations(auth_object = nil)
    ["product"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "desc", "display", "id", "id_value", "kind", "order", "product_id", "title", "updated_at", "url"]
  end

  # add validation here to have only one hero image per product
  # add enum for media kind , pdf , image , video
  # pdf or image can be uploaded , video is a url for a youtube video

end
 