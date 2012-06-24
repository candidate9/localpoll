class LocalResultsController < ApplicationController

  def show
    find_constituency
    find_local_poll

  end

end
