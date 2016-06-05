class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all
  end

  def show
    @discussion = Discussion.find(params[:id])
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new
    @discussion.contact_id = params[:contact_id]
    @discussion.date = params[:date]
    @discussion.notes = params[:notes]
    @discussion.follow_up = params[:follow_up]
    @discussion.follow_up_time = params[:follow_up_time]
    @discussion.priority = params[:priority]

    if @discussion.save
      redirect_to "/discussions", :notice => "Discussion created successfully."
    else
      render 'new'
    end
  end

  def edit
    @discussion = Discussion.find(params[:id])
  end

  def update
    @discussion = Discussion.find(params[:id])

    @discussion.contact_id = params[:contact_id]
    @discussion.date = params[:date]
    @discussion.notes = params[:notes]
    @discussion.follow_up = params[:follow_up]
    @discussion.follow_up_time = params[:follow_up_time]
    @discussion.priority = params[:priority]

    if @discussion.save
      redirect_to "/discussions", :notice => "Discussion updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @discussion = Discussion.find(params[:id])

    @discussion.destroy

    redirect_to "/discussions", :notice => "Discussion deleted."
  end
end
