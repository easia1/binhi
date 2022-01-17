class DropNativeDistributions < ActiveRecord::Migration[6.0]
  def change
    drop_table :native_distributions
  end
end
