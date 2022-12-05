class CartController < ApplicationController
  def create
    # logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i
    product = Product.find(id)
    session[:shopping_cart] << id
    redirect_to root_path
    flash[:notice] = "#{product.name} added to cart."
  end

  def destroy; end
end
