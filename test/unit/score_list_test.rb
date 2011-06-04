require 'test_helper'

class ScoreListTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "average" do
    assert score_lists(:q1p1).average_final == 6.3
    assert score_lists(:q1p2).average_final == 6.3
    assert score_lists(:q1p3).average_final == 6.8
    assert score_lists(:q1p4).average_final == 5.5
    assert score_lists(:q1p5).average_final == 6.3
    assert score_lists(:q1p6).average_final == 4.8
    assert score_lists(:q1p7).average_final == 6.4
    assert score_lists(:q1p8).average_final == 6.9
    assert score_lists(:q1p9).average_final == 6.3
    assert score_lists(:q1p10).average_final == 6.8
    assert score_lists(:q1p11).average_final == 5.7
    assert score_lists(:q1p12).average_final == 5.8
    assert score_lists(:q1p13).average_final == 4.6
    assert score_lists(:q1p14).average_final == 5.5
    assert score_lists(:q1p15).average_final == 7.5
    assert score_lists(:q1p16).average_final == 7.8
    assert score_lists(:q1p17).average_final == 6.4
    assert score_lists(:q1p18).average_final == 8.6
    assert score_lists(:q1p19).average_final == 6.8
    assert score_lists(:q1p20).average_final == 6.9
    assert score_lists(:q1p21).average_final == 6.8
    assert score_lists(:q1p22).average_final == 5.7
    assert score_lists(:q1p23).average_final == 7.8
    assert score_lists(:q1p24).average_final == 6.8
    assert score_lists(:q1p25).average_final == 6.1
    assert score_lists(:q1p26).average_final == 6.5
    assert score_lists(:q1p27).average_final == 5.3
    assert score_lists(:q1p28).average_final == 6.4
    assert score_lists(:q1p29).average_final == 6.5


    assert score_lists(:q2p1).average_final == 5.2
    assert score_lists(:q2p2).average_final == 6.8
    assert score_lists(:q2p3).average_final == 6.9
    assert score_lists(:q2p4).average_final == 6
    assert score_lists(:q2p5).average_final == 6.3
    assert score_lists(:q2p6).average_final == 6.2
    assert score_lists(:q2p7).average_final == 7.1
    assert score_lists(:q2p8).average_final == 6.8
    assert score_lists(:q2p9).average_final == 8.2
    assert score_lists(:q2p10).average_final == 6.7
    assert score_lists(:q2p11).average_final == 6.2
    assert score_lists(:q2p12).average_final == 5.2
    assert score_lists(:q2p13).average_final == 4.6
    assert score_lists(:q2p14).average_final == 6.1
    assert score_lists(:q2p15).average_final == 7
    assert score_lists(:q2p16).average_final == 6.5
    assert score_lists(:q2p17).average_final == 6.7
    assert score_lists(:q2p18).average_final == 6.8
    assert score_lists(:q2p19).average_final == 7.5
    assert score_lists(:q2p20).average_final == 6.7
    assert score_lists(:q2p21).average_final == 7.1
    assert score_lists(:q2p22).average_final == 6.3
    assert score_lists(:q2p23).average_final == 7.4
    assert score_lists(:q2p24).average_final == 7.5
    assert score_lists(:q2p25).average_final == 6.7
    assert score_lists(:q2p26).average_final == 5.8
    assert score_lists(:q2p27).average_final == 5
    assert score_lists(:q2p28).average_final == 6.3
    assert score_lists(:q2p29).average_final == 6.4

  end

end
