class OrderController < ApplicationController
  def create
    address_id = params[:address_id].to_i
    cart_id = params[:cart_id].to_i
    subtotal = params[:subtotal].to_i
    pst = params[:pst].to_i
    gst = params[:gst].to_i

    @order = Order.new(address_id: address_id, customer_id: 1, cart_id: cart_id, subtotal: subtotal, pst: pst,
                       gst: gst)

    redirect_to root_path, notice: "Order was successfully created." if @order.save
  end
end
