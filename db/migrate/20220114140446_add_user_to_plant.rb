class AddUserToPlant < ActiveRecord::Migration[6.0]
  def change
    add_reference :plants, :user, null: false, foreign_key: true
  end
end
