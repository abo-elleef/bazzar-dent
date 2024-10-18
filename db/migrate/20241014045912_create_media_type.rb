class CreateMediaType < ActiveRecord::Migration[7.1]
  def change
    create_table :medias do |t|
      t.string :title
      t.text :desc
      t.string :url
      t.string :kind
      t.string :display
      t.integer :order
      t.belongs_to :product
      t.timestamps
    end
  end
end
