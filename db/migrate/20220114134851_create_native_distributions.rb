class CreateNativeDistributions < ActiveRecord::Migration[6.0]
  def change
    create_table :native_distributions do |t|
      t.string :country
      t.string :region
      t.string :province

      t.timestamps
    end
  end
end
