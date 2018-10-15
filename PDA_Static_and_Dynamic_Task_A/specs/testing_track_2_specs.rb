require 'minitest/autorun'
require 'minitest/rg'
require_relative '../testing_task_2.rb'



class TestGame < MiniTest::Test

  def setup
    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("Clubs", 3)
    @cards = [@card1, @card2]
  end

  def test_check_for_ace
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_highest_card
    assert_equal(@card2, CardGame.highest_card(@card1, @card2))
  end

  def test_cards_total
    assert_equal("You have a total of 4", CardGame.cards_total(@cards))
  end

end
