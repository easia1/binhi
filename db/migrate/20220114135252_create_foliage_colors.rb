class CreateFoliageColors < ActiveRecord::Migration[6.0]
  def change
    create_table :foliage_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
