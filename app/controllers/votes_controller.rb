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

    @vote = @local_poll.votes.new
    @vote.candidate = @local_poll.candidates.find_by_id(params[:vote][:candidate_id])
    @vote.save!
    redirect_to constituency_local_poll_results_path(@constituency, @local_poll)
  end

end
