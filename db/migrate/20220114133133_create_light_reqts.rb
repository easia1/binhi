class CreateLightReqts < ActiveRecord::Migration[6.0]
  def change
    create_table :light_reqts do |t|
      t.string :light_reqt

      t.timestamps
    end
  end
end
