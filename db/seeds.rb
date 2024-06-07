def product_name 
  %w[国内一日游 日本一日游 北京一日游 上海一日游 呼伦贝尔三日游].sample
end

def user_name 
  %w[李四 王五 赵六 小李 小王].sample
end

6.times do 	
   Detail.create!(	
    productId: "p001",
    orderId: "o001",	
    userId: "u001",	
    userName: user_name,	
    productName: product_name,
    orderMoney:200.00,
    orderStatus:1,
    orderDate:"2024-5-31",
    startDate:"2024-6-10",
    endDate:"2024-6-11"
   )	

  end	
  