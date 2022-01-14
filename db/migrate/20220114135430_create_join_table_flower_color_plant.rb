class CreateJoinTableFlowerColorPlant < ActiveRecord::Migration[6.0]
  def change
    create_join_table :flower_colors, :plants do |t|
      # t.index [:flower_color_id, :plant_id]
      # t.index [:plant_id, :flower_color_id]
    end
  end
end
