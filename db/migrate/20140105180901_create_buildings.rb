class CreateBuildings < ActiveRecord::Migration
  def up
    create_table :buildings do |t|
      t.string :street_address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.text :description
      t.integer :owner_id

      t.timestamps
    end
  end
  def down
    drop_table :buildings
  end
end
