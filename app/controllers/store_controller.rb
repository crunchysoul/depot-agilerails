class StoreController < ApplicationController
  include CurrentCart
  include SessionCounter

  before_action :set_cart
  skip_before_action :authorize

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      @counter = increment_count
    end
  end
end
