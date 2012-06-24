class ApplicationController < ActionController::Base
  protect_from_forgery


  private

  def find_constituency
    @constituency = Constituency.find_by_ons_code!(params[:constituency_id])
  end

  def find_local_poll
    @local_poll = @constituency.local_polls.find(params[:local_poll_id])
  end


end
