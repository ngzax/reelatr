class ContactsController < ApplicationController

  before_action :authenticate_user!
  before_action :redirect_cancel, only: [:create, :update]

  def edit
    @contact = Contact.find(params[:id])
  end

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def update
    params.permit!
    @contact = Contact.find(params[:id])

    if params[:contact]
      if @contact.update_attributes(params[:contact])
        flash[:notice] = "Contact was successfully updated!"
        redirect_to :action => :show, :id => @contact and return
      else
        render :action => :edit and return
      end
    end
  end

  private

  def redirect_cancel
    redirect_to(action: :show, id: params[:id]) if params[:commit] == "Cancel"
  end

end
