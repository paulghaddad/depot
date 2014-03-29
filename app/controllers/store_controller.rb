class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  
  def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
    @current_time = Time.now.strftime("Today is %A at %l:%k %P")
    @count = increment_count
  end
end
