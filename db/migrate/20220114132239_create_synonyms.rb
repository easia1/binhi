class CreateSynonyms < ActiveRecord::Migration[6.0]
  def change
    create_table :synonyms do |t|
      t.string :genus
      t.string :specific_epithet
      t.string :grex
      t.string :infraspecies_unit
      t.string :infraspecies_name
      t.string :cultivar_group
      t.string :cultivar
      t.string :hybrid
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
