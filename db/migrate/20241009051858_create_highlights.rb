class CreateHighlights < ActiveRecord::Migration[7.1]
  def change
    create_table :highlights do |t|
      t.string :title
      t.boolean :active, default: true
      t.belongs_to :product
      
      t.timestamps
    end
    
    add_column :products, :highlight_title, :string
    add_column :products, :highlight_desc, :text
  end
end
