require 'test_helper'

class ScoreListTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "average" do
    assert score_list(:q1p1).average ==
  end

end
