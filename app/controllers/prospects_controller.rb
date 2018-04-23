class ProspectsController < ApplicationController

  before_action :authenticate_user!

  def index
    @prospects = Prospect.all
  end

  def show
    @prospect = Prospect.find(params[:id])
  end

end
