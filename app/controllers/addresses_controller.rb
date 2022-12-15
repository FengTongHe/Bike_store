class AddressesController < InheritedResources::Base
  # GET /addresses or /addresses.json
  def index
    @addresses = Address.all
  end

  # GET /addresses/1 or /addresses/1.json
  def show
    @address = Address.find(params[:id])
    @tax = Tax.find_by(name: @address.province)
  end

  # GET /addresses/new
  def new
    @taxes = Tax.all
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
    @taxes = Tax.all
    @address = Address.find(params[:id])
  end

  # POST /addresses or /addresses.json
  def create
    @address = Address.new(address_params)

    respond_to do |format|
      if @address.save
        format.html do
          redirect_to address_url(@address), notice: "Address was successfully created."
        end
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1 or /addresses/1.json
  def update
    @address = Address.find(params[:id])
    respond_to do |format|
      if @address.update(address_params)
        format.html do
          redirect_to address_url(@address), notice: "Address was successfully updated."
        end
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1 or /addresses/1.json
  def destroy
    @address = Address.find(params[:id])
    redirect_to cart_path if @address.destroy
  end

  private

  def address_params
    params.require(:address).permit(:name, :address, :city, :province, :email)
  end
end
