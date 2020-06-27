class WareHousesController < ApplicationController

  def new
    @ware_house = WareHouse.new
  end

  def create
    @ware_house = WareHouse.new(ware_house_params)

    if @ware_house.save
      redirect_to root_path, notice: 'WareHouse was successfully created.'
    else
      render :new
    end
  end

  private

    def ware_house_params
      params.require(:ware_house).permit(:wh_code, :name, :pincode, :max_capacity)
    end

end
