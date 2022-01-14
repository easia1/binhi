class CreateGenera < ActiveRecord::Migration[6.0]
  def change
    create_table :genera do |t|
      t.string :name
      t.string :symbol
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
