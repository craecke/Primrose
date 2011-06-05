class Performer < ActiveRecord::Base
  has_many :score_lists

  def quarter_average
    s = score_lists.joins(:round).where("rounds.grouping = ?", "quarter")

    a = s.collect { |x| x.average_final }

    (a.inject { |sum,el| sum + el }.to_f / a.size).round(1)
  end
end
