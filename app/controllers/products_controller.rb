class ProductsController < InheritedResources::Base
  def index
    @products = Product.search(params[:search]).page(params[:page])
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :manufacture, :style, :cost, :price, :comment)
  end
end
