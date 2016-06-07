class RecruitingController < ApplicationController
  def home
    @discussions = Discussion.all
  end
end
