class LocalPollController < ApplicationController

  def show

    constituency = Constituency.find_by_ons_code!(params[:constituency_id])
    @local_poll = constituency.local_polls.find(params[:id])

  end

end
