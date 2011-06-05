class AddRoundGroupings < ActiveRecord::Migration
  def self.up
    groupings = [ "quarter", "quarter","semi","semi","semi","semi","semi" ]
    Round.all.each_with_index {|r,i|
      r.grouping = groupings[i]
      r.save
    }
  end

  def self.down
    Round.all.each { |r|
      r.grouping = nil
      r.save
    }
  end
end
