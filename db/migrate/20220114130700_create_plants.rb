class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :specific_epithet
      t.string :grex
      t.string :infraspecies_unit
      t.string :infraspecies_name
      t.string :cultivar_group
      t.string :cultivar
      t.string :hybrid
      t.string :water_reqts
      t.text :landscape_uses
      t.references :genus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
