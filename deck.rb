class Deck

attr_reader :deck_of_cards

  def initialize(cards)
    @deck_of_cards = cards
  end
# returns true if the game is over (all cards guessed correctly)
  def game_over?
    deck_of_cards.all?{|card| card.guessed_correctly}
  end
# shuffles the deck
  def shuffle
    @deck_of_cards.shuffle
  end
# randomly chooses a card that has not been guessed correctly yet this game
  def pick_card
    @deck_of_cards.select{|card| card.guessed_correctly == false}.sample
  end


  def add_card(card)
  end

  def remove_card(card)
  end

end
