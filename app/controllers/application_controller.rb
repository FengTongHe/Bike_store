class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :categories
  before_action :set_render_cart
  before_action :initialize_cart

  def set_render_cart
    @render_cart = true
  end

  def initialize_cart
    @cart ||= Cart.find_by(id: session[:cart_id])

    if @cart.nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

    # @shipping_info ||= ShippingInfo.find_by(id: session[:shippinginfo_id])

    # if @shipping_info.nil?
    #   @shipping_info = ShippingInfo.create
    #   session[:shippinginfo_id] = @shipping_info.id
    # end
  end

  private

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Product.find(session[:shopping_cart])
  end
end
