class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :manufacture, :style, :cost, :price, :comment)
    end

end
