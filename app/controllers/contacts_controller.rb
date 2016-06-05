class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
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
