class OrderDetailController < ApplicationController

  # 跳过CSRF令牌验证，保护用户免受跨站请求伪造攻击的关键策略
  skip_before_action :verify_authenticity_token

  # 画面显示
  def orderDetailPage
    @details = OrderDetail.all
    @productInfos = TblProductinfo.all
  end

  # 根据路由定义插入方法
  def insert_details

    # 前端传递的data，使用params接收
    @selected_products = params[:selected_products]
    success_count = 0
    error_count = 0
    resume_total_money=0

    # 遍历传递的id
    @selected_products.each do |id|

      # 根据id,查询商品信息表
      product = TblProductinfo.find(id.to_i)

      # 订单id
      random_number = SecureRandom.random_number(1000..9999).to_s
      new_order_id = 'o' + random_number

      # 订单价格
      @details = OrderDetail.all
      @count = @details.count
      new_price = 0
      if @count == 0
        new_price = product.price
      elsif @count == 1
        new_price = product.price - product.price*0.1
      elsif  @count == 2
        new_price = product.price - product.price*0.2
      elsif  @count == 3
        new_price = product.price - product.price*0.3
      elsif  @count == 4
        new_price = product.price - product.price*0.4
      else
        # 6次及以上，折扣50%
        new_price = product.price - product.price*0.5
      end

      # 履历表总价格
      resume_total_money += new_price

      # 创建一个新的OrderDetail对象
      detail = OrderDetail.new(
        # order_id: "o002", 
        order_id: new_order_id, 
        user_name: "张三",
        product_id: product.product_id, 
        route: product.route, 
        formulate: product.formulate, 
        product_name: product.productname, 
        travel_time: product.travel_time, 
        departure_city: product.departure_city, 
        tourism_cycle: product.tourism_cycle, 
        # order_money: product.price, 
        order_money: new_price, 
        order_status: 1, 
        order_date: Date.today
      )
      if detail.save
        success_count += 1
      else
        error_count += 1
      end
    end

    # 创建一个新的Resume对象
    resume = Resume.new(
      user_name: "张三",
      order_date: Date.today,
      order_num: @selected_products.count,
      order_total: @details.count,
      total_money: resume_total_money,
    )

    # 保存Resume对象
    if resume.save
      success_count += 1
    else
      error_count += 1
    end

    # 插入结果判断
    if success_count > 0
      if @count > 5
        message = "订购成功，这是您的第#{@count+1}次购买，折扣优惠50%"
      else
        message = "订购成功，这是您的第#{@count+1}次购买，折扣优惠#{@count}0%"
      end
      render json: { status: 'success', message: message, callback: 'refreshPage()' }

    else
      render json: { status: 'error', message: '订购失败', callback: '' }
    end
  end

  # 折扣信息页面的方法
  def discount
  end
end