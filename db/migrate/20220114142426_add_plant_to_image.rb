class AddPlantToImage < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :plant, null: false, foreign_key: true
  end
end
