class TicketsController < ApplicationController

	filter_resource_access


  def index
    @tickets = Ticket.all
  end
  
  def show
    @ticket = Ticket.find(params[:id])
  end
  
  def new
    @ticket = Ticket.new
  end
  
  def create
    @ticket = Ticket.new(params[:ticket])
    @ticket.location = Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ]).standortOrt
    @ticket.model = Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ]).modell
    @ticket.level = Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ]).mla
    @ticket.owner = current_user.login
    if @ticket.save
      flash[:notice] = "Successfully created ticket."
      redirect_to @ticket
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ticket = Ticket.find(params[:id])
  end
  
  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Successfully updated ticket."
      redirect_to @ticket
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    flash[:notice] = "Successfully destroyed ticket."
    redirect_to tickets_url
  end
end
