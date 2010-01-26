class AssetsController < ApplicationController
  def index
    @assets = Asset.all
    respond_to do |format|
    	format.html #index.html.erb
    	format.csv { render :csv => @assets }
    end
  end
  
  def show
    @asset = Asset.find(params[:id])
  end
  
  def new
    @asset = Asset.new
  end
  
  def create
    @asset = Asset.new(params[:asset])
    if @asset.save
      flash[:notice] = "Successfully created asset."
      redirect_to @asset
    else
      render :action => 'new'
    end
  end
  
  def edit
    @asset = Asset.find(params[:id])
  end
  
  def update
    @asset = Asset.find(params[:id])
    if @asset.update_attributes(params[:asset])
      flash[:notice] = "Successfully updated asset."
      redirect_to @asset
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    flash[:notice] = "Successfully destroyed asset."
    redirect_to assets_url
  end
end
