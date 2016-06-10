class FirmsController < ApplicationController
  def index
    @firms = Firm.all
  end

  def show
    @firm = Firm.find(params[:id])

    require 'open-uri'
  begin
    url_firm_name = URI.encode(@firm.name)
    api_key = ENV["linkedin_search_api_key"]
    url = "https://www.googleapis.com/customsearch/v1?q="+url_firm_name+ENV["linkedin_search_api_key"]
    raw_data=open(url).read
    require 'json'
    parsed_data = JSON.parse(raw_data)
    result = parsed_data["items"][0]
    @linkedin_link = result["link"]
  rescue
    # code in case of an error here
    @linkedin_link = "https://www.linkedin.com"
  end

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
    @firm.user_id = params[:user_id]

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
    @firm.user_id = params[:user_id]

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
