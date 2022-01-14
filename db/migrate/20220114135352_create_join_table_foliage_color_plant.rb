class CreateJoinTableFoliageColorPlant < ActiveRecord::Migration[6.0]
  def change
    create_join_table :foliage_colors, :plants do |t|
      # t.index [:foliage_color_id, :plant_id]
      # t.index [:plant_id, :foliage_color_id]
    end
  end
end
