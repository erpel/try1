class TicketsController < ApplicationController

	filter_resource_access


	def index
		if params[:page] != "all" && params[:search_common].nil?
			flash[:notice]="searchlogic"
			@search = Ticket.search(params[:search])
			@tickets = @search.all.paginate(:per_page => 10, :page => params[:page])
		end
		if params[:page] == "all"
			flash[:notice]="if page=all"
			@tickets = Ticket.all
		else 
			#flash[:notice] = "searchcommon"
			#@tickets = Ticket.search_common(params[:search_common], params[:page])
			#if @tickets.empty?
			#	flash.now[:error] = "No matches"
			#end
		end
		flash[:error] = "empty" if params[:search_common].nil?
	end
  
  def show
    @ticket = Ticket.find(params[:id])
  end
  
  def new
    @ticket = Ticket.new
  end
  
  def create
    @ticket = Ticket.new(params[:ticket])
    if Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ])
		@ticket.location = Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ]).standortOrt
		@ticket.model = Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ]).modell
		@ticket.level = Asset.find(:first, :conditions => [ 'serial LIKE ?', @ticket.serial ]).mla
    end
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
