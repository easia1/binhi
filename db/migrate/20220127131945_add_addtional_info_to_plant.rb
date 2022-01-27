class AddAddtionalInfoToPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :additional_info, :text
  end
end
