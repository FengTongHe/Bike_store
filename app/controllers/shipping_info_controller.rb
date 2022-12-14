class ShippingInfoController < ApplicationController
  def show
    @taxes = Tax.all

    @shipping_info = ShippingInfo.new(shipping_info_params)

    @shipping_info.save!
  end

  def update
    @tax = Tax.find_by(id: params[:id].presence)

    # respond_to do |format|
    #   format.turbo_stream do
    #     render turbo_stream: turbo_stream.replace("tax")
    #   end
    # end
  end

  private

  def shipping_info_params
    params.require(:shipping_info).permit(:name, :email, :address, :city, :province)
  end
end
