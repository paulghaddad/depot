class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("Today is %A at %l:%k %P")
  end
end
