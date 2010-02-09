class InfocollectionsController < ApplicationController
	filter_resource_access
  def index
    @infocollections = Infocollection.all
  end
  
  def show
    @infocollection = Infocollection.find(params[:id])
  end
  
  def new
    @infocollection = Infocollection.new
  end
  
  def create
    @infocollection = Infocollection.new(params[:infocollection])
    if @infocollection.save
      flash[:notice] = "Successfully created infocollection."
      redirect_to @infocollection
    else
      render :action => 'new'
    end
  end
  
  def edit
    @infocollection = Infocollection.find(params[:id])
  end
  
  def update
    @infocollection = Infocollection.find(params[:id])
    if @infocollection.update_attributes(params[:infocollection])
      flash[:notice] = "Successfully updated infocollection."
      redirect_to @infocollection
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @infocollection = Infocollection.find(params[:id])
    @infocollection.destroy
    flash[:notice] = "Successfully destroyed infocollection."
    redirect_to infocollections_url
  end
end
