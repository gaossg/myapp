Rails.application.routes.draw do

  # 画面启动root
  root 'order_detail#orderDetailPage'
  get 'order_detail/orderDetailPage'

  # 插入数据的方法
  resources :order_detail do
    collection do
      post "insert_details"
    end
  end

  # 折扣信息的方法
  get 'discount' => 'order_detail#discount'

end
