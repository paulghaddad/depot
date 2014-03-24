class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("Today is %A at %l:%k %P")
    @count = increment_count
  end
end
