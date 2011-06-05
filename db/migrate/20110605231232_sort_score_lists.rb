class SortScoreLists < ActiveRecord::Migration
  def self.up
    #Reorder data to show scores in numerical order.
    ScoreList.all.each do |x|
      s = x.scores
      d = x.dropped_scores
      dropped_values = d.collect { |i| s[i] }

      s.sort!.reverse!
      d = dropped_values.collect { |v| s.index v }

      x.update_attribute :scores, s.join(' ')
      x.update_attribute :dropped_scores, d.join(' ')
    end
  end

  def self.down
  end
end
