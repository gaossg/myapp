class Detail < ApplicationRecord

  # validates :product_id, presence: true
  validates :order_id, presence: true
  validates :user_name, presence: true
  validates :product_name, presence: true
  validates :order_money, presence: true
  validates :order_status, presence: true
  validates :order_date, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

end
