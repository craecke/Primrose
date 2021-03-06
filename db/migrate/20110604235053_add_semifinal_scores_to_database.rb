class AddSemifinalScoresToDatabase < ActiveRecord::Migration
  def self.up
    [
     [9, '8.5 7 6 8.5 6.9 7 7 6 8', '2 3'], 
     [15, '7.5 7 9.5 7.5 8 7.3 7.6 9 7', '2 8'], 
     [16, '8 5.5 9 6.3 7.5 7.7 9.2 7 6.5', '0 4'], 
     [18, '6.5 6.8 8 7.2 6.7 7 8.6 4.5 5.5', '6 8'], 
     [19, '6 7.2 8 7.8 7 7 8 6 5.5', '2 7'], 
     [21, '8 8 9.5 8 8.3 8.9 8.2 6 8', '0 7'], 
     [23, '5 6.6 7 7.2 5.5 6.5 6.5 6 5', '2 5'], 
     [24, '9 6.5 9 8.6 8.7 7 8.6 8 6.5', '4 5']
    ].each do |x|
      ScoreList.create :round_id => 3,
      :performer_id => x[0],
      :scores => x[1],
      :dropped_scores => x[2]
    end

    [
     [9, '8 6.5 6 6.7 8 5.5 5.5 5 7', '2 5'],
     [15, '7.5 6.7 9.5 6.3 6 7 5.8 8 7', '1 7'],
     [16, '6 5 8.5 6.2 6.5 7 7.8 5 5.5', '4 6'],
     [18, '8.8 8.5 9.3 8.2 8.9 7.5 9.6 6 5', '1 6'],
     [19, '5 6.7 6 6.5 6.3 6 8.6 4 4', '2 8'],
     [21, '9 8.5 9.3 9 6.7 8.9 9 7 8', '5 8'],
     [23, '5 6.6 4.5 6.5 4.8 6 6.3 6 4', '3 7'],
     [24, '8.8 6 7 6.8 6.7 6.5 9.4 7 7', '1 2']
    ].each do |x|
      ScoreList.create :round_id => 4,
      :performer_id => x[0],
      :scores => x[1],
      :dropped_scores => x[2]
    end


    [
     [9, '9.5 6 3.5 9 9.6 8.8 6.5 6 8', '1 4'],
     [15, '6 6.8 8.5 6.5 5.5 7.5 4.5 7 7', '4 5'],
     [16, '7 5.9 8.5 8.5 9.7 8.3 8.9 6 6', '3 6'],
     [18, '8.2 8.5 8 8 9.8 7.9 8.8 6.5 5', '1 6'],
     [19, '3 5 4 7 4.8 6 7.8 4 5', '6 8'],
     [21, '9.8 8.5 9.5 9.5 9.8 9.2 9 8 9', '1 6'],
     [23, '5 6 3 7.8 7 6 6 7 4', '0 4'],
     [24, '9 7 7 8.5 9 7 9.5 8 6', '0 6']
    ].each do |x|
      ScoreList.create :round_id => 5,
      :performer_id => x[0],
      :scores => x[1],
      :dropped_scores => x[2]
    end

    [
     [9, '8 6.2 5 8.2 6 6 4.8 4 7', '0 7'],
     [15, '8.2 8.5 9.7 8.3 6.8 8.6 8.5 10 8', '4 7'],
     [16, '7 6 8 7.2 6.8 5.9 7.8 5 6', '7 8'],
     [18, '9 8 8.7 7 9.9 8 9.2 6 6', '2 7'],
     [19, '3 7.5 5 7.4 5 7.9 9.2 4 6', '4 5'],
     [21, '9.5 9 9.8 9.5 8.5 9.5 9.2 8 9', '4 8'],
     [23, '5 8 5 8 7 7 9 7 5', '4 5'],
     [24, '8 7.5 6.5 6.6 6 6.9 9 6 6', '2 6']
    ].each do |x|
      ScoreList.create :round_id => 6,
      :performer_id => x[0],
      :scores => x[1],
      :dropped_scores => x[2]
    end


    [
     [9, '9.8 8.8 8 9.6 8.9 9 9.1 7 9.5', '3 8'],
     [15, '7.5 8.5 9.8 9.8 8 8.5 6 10 8.5', '5 6'],
     [16, '6 5 7.5 5 7 7 6 5 5.5', '2 4'],
     [18, '9.8 8.5 9 6.5 7.5 7 6 6.5 7', '3 4'],
     [19, '3 7 4 8.2 4.7 6.9 6.3 4 4', '7 8'],
     [21, '9.5 9 9.9 9.5 9.8 9.1 8.5 8 8', '1 5'],
     [23, '6 7 5 9.5 7.9 6 7.5 7 4', '2 6'],
     [24, '8.9 7 8 9.2 9.5 7.8 9.5 9 8', '0 5']
    ].each do |x|
      ScoreList.create :round_id => 7,
      :performer_id => x[0],
      :scores => x[1],
      :dropped_scores => x[2]
    end

  end

  def self.down
    ScoreList.find_all_by_round_id(3).each { |s| s.destroy }
    ScoreList.find_all_by_round_id(4).each { |s| s.destroy }
    ScoreList.find_all_by_round_id(5).each { |s| s.destroy }
    ScoreList.find_all_by_round_id(6).each { |s| s.destroy }
    ScoreList.find_all_by_round_id(7).each { |s| s.destroy }
  end
end
