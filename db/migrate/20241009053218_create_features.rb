class CreateFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :features do |t|
      t.belongs_to :product
      t.string :key
      t.string :value
      t.timestamps
    end
  end
end
