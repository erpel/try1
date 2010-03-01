class EMailTextsController < ApplicationController
  def index
    @e_mail_texts = EMailText.all
  end
  
  def show
    @e_mail_text = EMailText.find(params[:id])
  end
  
  def new
    @e_mail_text = EMailText.new
  end
  
  def create
    @e_mail_text = EMailText.new(params[:e_mail_text])
    if @e_mail_text.save
      flash[:notice] = "Successfully created e mail text."
      redirect_to @e_mail_text
    else
      render :action => 'new'
    end
  end
  
  def edit
    @e_mail_text = EMailText.find(params[:id])
  end
  
  def update
    @e_mail_text = EMailText.find(params[:id])
    if @e_mail_text.update_attributes(params[:e_mail_text])
      flash[:notice] = "Successfully updated e mail text."
      redirect_to @e_mail_text
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @e_mail_text = EMailText.find(params[:id])
    @e_mail_text.destroy
    flash[:notice] = "Successfully destroyed e mail text."
    redirect_to e_mail_texts_url
  end
end
