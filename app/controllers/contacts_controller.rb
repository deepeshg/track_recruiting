class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @contact.name = params[:name]
    @contact.firm_id = params[:firm_id]
    # @Firm = Firm.where({:firm_id => @firm.id})
    #
    # require 'open-uri'
    # url_contact_name = URI.encode(@contact.name)
    # url_firm_name = URI.encode(@firm.name)
    # url = "https://www.googleapis.com/customsearch/v1?q="+url_contact_name+url_firm_name+"&cx=003869403274733163220%3Atyi75ntflfu&key=AIzaSyAPKE6XTV3-48RLmlivKkrD-VObQI6QWAQ"
    # raw_data=open(url).read
    # require 'json'
    # parsed_data = JSON.parse(raw_data)
    # result = parsed_data["items"][0]
    # @linkedin_link = result["link"]
    # @org = result["pagemap"]["person"][0]["org"]
    # @location = result["pagemap"]["person"][0]["location"]
    # @role = result["pagemap"]["person"][0]["role"]
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    @contact.name = params[:name]
    @contact.firm_id = params[:firm_id]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.source = params[:source]
    @contact.notes = params[:notes]
    @contact.user_id = params[:user_id]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact created successfully."
    else
      render 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.name = params[:name]
    @contact.firm_id = params[:firm_id]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.source = params[:source]
    @contact.notes = params[:notes]
    @contact.user_id = params[:user_id]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy

    redirect_to "/contacts", :notice => "Contact deleted."
  end
end
