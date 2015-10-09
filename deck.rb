class Deck

attr_reader :deck_of_cards

  def initialize(cards)
    @deck_of_cards = cards
  end


  def shuffle
    @deck_of_cards.shuffle
  end


  def add_card(card)
  end

  def remove_card(card)
  end

end
