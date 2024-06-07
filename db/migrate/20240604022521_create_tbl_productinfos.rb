class CreateTblProductinfos < ActiveRecord::Migration[7.1]
  def change
    create_table :tbl_productinfos do |t|
      t.string :product_id
      t.string :route
      t.string :formulate
      t.string :productname
      t.date :travel_time
      t.string :departure_city
      t.string :tourism_cycle
      t.integer :age_min
      t.integer :age_max
      t.float :price

      t.timestamps
    end
  end
end
