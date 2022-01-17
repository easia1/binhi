class AddNativeDistributionToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :distribution, :string
  end
end
