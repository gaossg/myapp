class CreateDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :details do |t|
      t.string :product_id
      t.string :order_id
      # t.string :userId
      t.string :user_name
      t.string :product_name
      t.float :order_money
      t.integer :order_status
      t.date :order_date
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
