class ScoreList < ActiveRecord::Base
  belongs_to :performer
  belongs_to :round
end
