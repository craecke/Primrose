class RoundsController < ApplicationController

  def index
    @rounds = Round.all
#    @scores = @rounds.collect {|r| r.score_lists }
#    @dropped_scores =
  end

end
