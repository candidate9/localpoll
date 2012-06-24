class PostCodesController < ApplicationController

  def show

    post_code = Postcode.find_by_name!(params[:postcode])
    constituency = post_code.constituency
    latest_local_poll = constituency.local_polls.last

    redirect_to constituency_local_poll_path(constituency, latest_local_poll)


  end

  rescue_from(ActiveRecord::RecordNotFound) {

    render 'not_found', :status => 404
  }

end
