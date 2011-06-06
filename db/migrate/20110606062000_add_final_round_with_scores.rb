class AddFinalRoundWithScores < ActiveRecord::Migration
  def self.up
    r = Round.new
    r.title = 'Finals'
    r.save
    r.reload

    [
     [24, '6.7 7 8.5 8 6.5 8 6.8'],
     [15, '7 7.5 9 8.5 7.8 7 8.6'],
     [21, '9.2 7.3 9.2 9 8 9.5 9.2']
    ].each do |s|
      ScoreList.create :performer_id => s[0],
      :round_id => r.id,
      :scores => s[1].split(' ').sort.reverse.join(' ')
    end

  end

  def self.down
  end
end
