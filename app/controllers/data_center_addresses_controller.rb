class DataCenterAddressesController < ApplicationController
  def index
    @data_center_addresses = DataCenterAddress.all
  end
  
  def show
    @data_center_address = DataCenterAddress.find(params[:id])
  end
  
  def new
    @data_center_address = DataCenterAddress.new
  end
  
  def create
    @data_center_address = DataCenterAddress.new(params[:data_center_address])
    if @data_center_address.save
      flash[:notice] = "Successfully created data center address."
      redirect_to @data_center_address
    else
      render :action => 'new'
    end
  end
  
  def edit
    @data_center_address = DataCenterAddress.find(params[:id])
  end
  
  def update
    @data_center_address = DataCenterAddress.find(params[:id])
    if @data_center_address.update_attributes(params[:data_center_address])
      flash[:notice] = "Successfully updated data center address."
      redirect_to @data_center_address
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @data_center_address = DataCenterAddress.find(params[:id])
    @data_center_address.destroy
    flash[:notice] = "Successfully destroyed data center address."
    redirect_to data_center_addresses_url
  end
end
