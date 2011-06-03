class CreateRounds < ActiveRecord::Migration
  def self.up
    create_table :rounds do |t|
      t.string :title
      t.timestamps
    end
    ['Quarter Finals, Day 1', 'Quarter Finals, Day 2',
     (1..5).to_a.collect{ |n| "Semifinals, Box #{n}" }
    ].flatten.each { |x| Round.create :title => x }
  end

  def self.down
    drop_table :rounds
  end
end
