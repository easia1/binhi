class CreateFlowerColors < ActiveRecord::Migration[6.0]
  def change
    create_table :flower_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
