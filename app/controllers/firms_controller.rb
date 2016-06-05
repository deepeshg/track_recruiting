class FirmsController < ApplicationController
  def index
    @firms = Firm.all
  end

  def show
    @firm = Firm.find(params[:id])
  end

  def new
    @firm = Firm.new
  end

  def create
    @firm = Firm.new
    @firm.name = params[:name]
    @firm.industry = params[:industry]
    @firm.on_campus = params[:on_campus]
    @firm.location = params[:location]
    @firm.geography = params[:geography]
    @firm.functional_fit = params[:functional_fit]
    @firm.industry_fit = params[:industry_fit]
    @firm.booth_alumni = params[:booth_alumni]
    @firm.firm_score = params[:firm_score]
    @firm.notes = params[:notes]

    if @firm.save
      redirect_to "/firms", :notice => "Firm created successfully."
    else
      render 'new'
    end
  end

  def edit
    @firm = Firm.find(params[:id])
  end

  def update
    @firm = Firm.find(params[:id])

    @firm.name = params[:name]
    @firm.industry = params[:industry]
    @firm.on_campus = params[:on_campus]
    @firm.location = params[:location]
    @firm.geography = params[:geography]
    @firm.functional_fit = params[:functional_fit]
    @firm.industry_fit = params[:industry_fit]
    @firm.booth_alumni = params[:booth_alumni]
    @firm.firm_score = params[:firm_score]
    @firm.notes = params[:notes]

    if @firm.save
      redirect_to "/firms", :notice => "Firm updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @firm = Firm.find(params[:id])

    @firm.destroy

    redirect_to "/firms", :notice => "Firm deleted."
  end
end
