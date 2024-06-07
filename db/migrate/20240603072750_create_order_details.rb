class CreateOrderDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :order_details do |t|
      t.string :order_id
      t.string :user_name
      t.string :product_id
      t.string :product_name
      t.string :route
      t.string :formulate
      t.date :travel_time
      t.string :departure_city
      t.string :tourism_cycle
      t.float :order_money
      t.integer :order_status
      t.date :order_date

      t.timestamps
    end
  end
end
