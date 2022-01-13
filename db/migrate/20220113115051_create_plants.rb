class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :sci_name
      t.text :synonyms, array: true, default: []
      t.text :common_names, array: true, default: []
      t.string :family
      t.string :genus
      t.text :light_reqts, array: true, default: []
      t.string :water_reqts
      t.text :foliage_color, array: true, default: []
      t.text :flower_color, array: true, default: []
      t.text :landscape_uses
      t.text :native_distribution, array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
