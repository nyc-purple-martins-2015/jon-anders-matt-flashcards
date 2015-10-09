

class View

  def initialize(args = {})

  end

  def show_card_def(card)
    puts "\nYOUR DEFINTITION IS:\n #{card.definition}"
  end

  def get_user_input
    puts "\nPlease enter your input.\n"
    gets.chomp
  end

  def start_message
    puts "\nWelcome to flashcards.  You killed my father.  Prepare to die.\n"
  end

  def game_over
    puts "GAME OVER"
  end

  def win_message
    puts "Rats you've bested me. Jokes on you, all of these definitions are wrong."
  end

  def lose_message
    puts "Better luck next time"
    sleep(0.25)
    puts "..."
    sleep(0.25)
    puts "..."
    sleep(0.25)
    puts "..."
    sleep(0.25)
    puts "..."
    sleep (1.0)
    puts "Dumbass"
  end

  def correct_message
    puts ["That is correct.", "Wow, finally.", "About time.", "Congratulations.  You ARE smarter than a 5th grader?", "Ok"].sample
    puts ""
  end

  def incorrect_message
    puts ""
    puts ["Stop wasting my time.", "You suck!", "Wow, even my dog's dog got that question right.", "You ARE the weakest link... GOODBYE!", "Ok..."].sample
    puts "If you are a quitting quitter who wants to quit type 'QUIT', loser!"
    puts "If you want to try and fail again, type 'AGAIN'."
    puts "Otherwise hit any key."
    sleep(0.5)
    puts "(I suggest you 'QUIT')"
  end

end
