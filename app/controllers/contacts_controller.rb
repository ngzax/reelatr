class ContactsController < ApplicationController

  before_action :authenticate_user!
  before_action :redirect_cancel, only: [:create, :update]

  def create
    params.permit!
    @contact = Contact.new(params[:contact])
    @contact.user_id = current_user.id
    if @contact.save
      flash[:notice] = "Contact was successfully created!"
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    validate_user
  end

  def index
    @contacts = Contact.all.where(user_id: current_user)
  end

  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])
    validate_user
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
    redirect_to(action: :show, id: params[:id]) if params[:commit] == "Cancel" && params[:id]
    redirect_to(action: :index)
  end

  def validate_user
    if @contact.user_id != current_user.id
      flash[:error] = "There is no contact with that Id"
      redirect_to action: :index and return
    end
  end

end
