class DropJoinTable < ActiveRecord::Migration[6.0]
  def change
    drop_join_table :plants, :native_distributions do |t|
      # t.index [:plant_id, :native_distribution_id]
      # t.index [:native_distribution_id, :plant_id]
    end
  end
end
