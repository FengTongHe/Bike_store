class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:name, :address, :city, :province, :email)
    end

end
