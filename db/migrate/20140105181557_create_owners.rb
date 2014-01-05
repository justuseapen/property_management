class CreateOwners < ActiveRecord::Migration
  def up
    create_table :owners do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.string :email, null: false
      t.string :company

      t.timestamps
    end
  end
  def down
  	drop_table :owners
  end
end
