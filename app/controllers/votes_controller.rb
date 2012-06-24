class VotesController < ApplicationController

  def show
    find_constituency
    find_local_poll

    @vote = @local_poll.votes.new

    render 'new'
  end

  def create
    find_constituency
    find_local_poll

    @vote = @local_poll.votes.new(params[:vote])
    @vote.save!
    redirect_to constituency_local_poll_path(@constituency, @local_poll)
  end


  private

  def find_constituency
    @constituency = Constituency.find_by_ons_code!(params[:constituency_id])
  end

  def find_local_poll
    @local_poll = @constituency.local_polls.find(params[:local_poll_id])
  end

end
