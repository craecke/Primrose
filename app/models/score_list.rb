class ScoreList < ActiveRecord::Base
  belongs_to :performer
  belongs_to :round

  def scores
    s = read_attribute(:scores)

    s.split(" ").collect { |s| s.to_f }
  end

  def dropped_scores
    d = read_attribute(:dropped_scores)
    d.split(" ").collect { |d| d.to_i }
  end

  def final_scores
    s = scores.clone
    d = dropped_scores.sort.reverse

    d.each { |i| s.delete_at(i) }
    s
  end

  def average_all
    a = scores
    (a.inject { |sum,el| sum + el }.to_f / a.size).round(1)
  end

  def average_final
    a = final_scores
    (a.inject { |sum,el| sum + el }.to_f / a.size).round(1)
  end
end
