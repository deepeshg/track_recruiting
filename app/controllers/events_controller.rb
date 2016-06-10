class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.firm_id = params[:firm_id]
    @event.user_id = params[:user_id]
    @event.notes = params[:notes]
    @event.time = params[:time]
    @event.priority = params[:priority]
    @event.location = params[:location]
    @event.event_type = params[:event_type]
    @event.event_name = params[:event_name]
    @event.past_event = params[:past_event]

    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.firm_id = params[:firm_id]
    @event.user_id = params[:user_id]
    @event.notes = params[:notes]
    @event.time = params[:time]
    @event.priority = params[:priority]
    @event.location = params[:location]
    @event.event_type = params[:event_type]
    @event.event_name = params[:event_name]
    @event.past_event = params[:past_event]

    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to "/events", :notice => "Event deleted."
  end

  def toggle_event
    @event = Event.find(params[:id])
    @event.past_event = true
    if @event.save
    redirect_to "/", :notice => "Event moved to past events."
  else
    render 'edit'
  end

  end

end
