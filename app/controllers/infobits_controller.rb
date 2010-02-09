class InfobitsController < ApplicationController
	filter_resource_access
  def index
    @infobits = Infobit.all
  end
  
  def show
    @infobit = Infobit.find(params[:id])
  end
  
  def new
    @infobit = Infobit.new
  end
  
  def create
    @infobit = Infobit.new(params[:infobit])
    if @infobit.save
      flash[:notice] = "Successfully created infobit."
      redirect_to @infobit
    else
      render :action => 'new'
    end
  end
  
  def edit
    @infobit = Infobit.find(params[:id])
  end
  
  def update
    @infobit = Infobit.find(params[:id])
    if @infobit.update_attributes(params[:infobit])
      flash[:notice] = "Successfully updated infobit."
      redirect_to @infobit
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @infobit = Infobit.find(params[:id])
    @infobit.destroy
    flash[:notice] = "Successfully destroyed infobit."
    redirect_to infobits_url
  end
end
