class RecruitingController < ApplicationController
  def home
    @discussions = Discussion.all
    @events = Event.all
  end
end
