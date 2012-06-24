class ResultsController < ApplicationController

  def show
    @poll = Poll.find(params[:poll_id])
  end

end
