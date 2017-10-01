class StoreController < ApplicationController
  include SessionCounter

  def index
    @products = Product.order(:title)
    @counter = increment_count
  end
end
