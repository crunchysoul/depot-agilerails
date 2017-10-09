class StoreController < ApplicationController
  include CurrentCart
  include SessionCounter

  before_action :set_cart
  skip_before_action :authorize

  def index
    @products = Product.order(:title)
    @counter = increment_count
  end
end
