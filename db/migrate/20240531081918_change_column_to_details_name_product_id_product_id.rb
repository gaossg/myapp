class ChangeColumnToDetailsNameProductIdProductId < ActiveRecord::Migration[7.1]
  def change
    rename_column :details, :productId, :product_id
    rename_column :details, :orderId, :order_id
    rename_column :details, :userName, :user_name
    rename_column :details, :productName, :product_name
    rename_column :details, :orderMoney, :order_money
    rename_column :details, :orderStatus, :order_status
    rename_column :details, :orderDate, :order_date
    rename_column :details, :startDate, :start_date
    rename_column :details, :endDate, :end_date
  end
end
