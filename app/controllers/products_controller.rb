class ProductsController < InheritedResources::Base
  def index
    @products = Product.page(params[:page])
  end

  private

  def product_params
    params.require(:product).permit(:name, :manufacture, :style, :cost, :price, :comment)
  end
end
