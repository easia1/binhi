class CreateJoinTableNativeDistributionPlant < ActiveRecord::Migration[6.0]
  def change
    create_join_table :native_distributions, :plants do |t|
      # t.index [:native_distribution_id, :plant_id]
      # t.index [:plant_id, :native_distribution_id]
    end
  end
end
