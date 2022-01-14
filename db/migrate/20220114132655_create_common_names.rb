class CreateCommonNames < ActiveRecord::Migration[6.0]
  def change
    create_table :common_names do |t|
      t.string :name
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
