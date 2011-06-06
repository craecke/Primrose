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

  def alternate_scores
    scores.sort[1..-2]
  end

  def average_all
    get_average scores
  end

  def average_final
    get_average final_scores
  end

  def average_alternate
    get_average alternate_scores
  end


  protected

  def get_average(a)
    result = (a.inject { |sum,el| sum + el }.to_f / a.size).round(2)
    result = result.to_s.split '.'
    if result[1].present?
      result[1] = result[1].ljust 2, '0'
    else
      result[1] = '00'
    end
    result.join '.'
  end

end
