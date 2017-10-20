class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to "http://pinsandpatchez.com"
    else
      render 'new'
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:email, :name)
  end

end
