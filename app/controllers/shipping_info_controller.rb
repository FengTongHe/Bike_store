class ShippingInfoController < ApplicationController
  def show
    @taxes = Tax.all
  end

  def update
    @tax = Tax.find_by(id: params[:id].presence)
    # respond_to do |format|
    #   format.turbo_stream do
    #     render turbo_stream: turbo_stream.replace("tax")
    #   end
    # end
  end
end
