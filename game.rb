class Game

  def initialize(deck)
    @deck = deck
  end


  def game_over?
    deck.all?{|card| card.guessed_correctly}
  end

  # def play
  #   while !game_over?
  #     card = deck.select{|card| !card.guessed_correctly}.sample
  #     #display definition
  #   end
  # end

  def play(card)
    # view
    # show the definition
    # take in user input

    # model
    # if user is correct, repeat

    else ask again
  end




end
