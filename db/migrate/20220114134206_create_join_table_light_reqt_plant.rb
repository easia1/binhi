class CreateJoinTableLightReqtPlant < ActiveRecord::Migration[6.0]
  def change
    create_join_table :light_reqts, :plants do |t|
      # t.index [:light_reqt_id, :plant_id]
      # t.index [:plant_id, :light_reqt_id]
    end
  end
end
