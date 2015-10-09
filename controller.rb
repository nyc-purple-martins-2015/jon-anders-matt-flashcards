require 'csv'
require_relative './card'
require_relative './deck'
require_relative './parser'
require_relative './view'

$quitter = false

parser = Parser.new
view = View.new
deck = parser.parse_file

controller_info={parser: parser, view: view, deck: deck}

view.start_message

def specific_card(args, card)
  view = args[:view]
  deck = args[:deck]
  view.show_card_def(card)
  guess = view.get_user_input
    if card.correct?(guess)
      view.correct_message
    else
      view.incorrect_message
      case view.get_user_input
      when "QUIT"
        view.lose_message
        $quitter=true
        return
      when "AGAIN"
        specific_card(args, card)
      else

      end
    end
  end


while !deck.game_over? && !$quitter
  card = deck.pick_card
  specific_card(controller_info, card)
end

# if deck

view.game_over
