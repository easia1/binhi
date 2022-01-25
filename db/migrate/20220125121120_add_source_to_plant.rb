class AddSourceToPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :source, :text
  end
end
