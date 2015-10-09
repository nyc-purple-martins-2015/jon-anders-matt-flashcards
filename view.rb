

class View

  def initialize(args = {})

  end

  def show_card_def(card)
    puts "\nYOUR DEFINTITION IS:\n#{card.definition}"
  end

  def view_answer(card)
    puts "\nThe correct answer, since you couldn't figure it out, is:\n#{card.word}"
  end

  def get_user_input
    puts "\nPlease enter your input.\n"
    gets.chomp
  end

  def start_message
    puts "\nWelcome to flashcards.  You killed my father.  Prepare to die.\n"
  end

  def deck_select
    puts "\nPlease enter file path for your deck or hit enter and I will choose the easiest one for you."
  end

  def game_over
    puts "GAME OVER"
  end

  def view_guesses(card)
    print "\nYou have guessed the wrong thing on this word "
    if card.number_of_incorrect_guesses == 1
      print "#{card.number_of_incorrect_guesses} time."
    else
      print "#{card.number_of_incorrect_guesses} times."
    end
    puts "\n"
  end

  def try_again
    puts "Would you like to try and fail again? Type YES if you are that pathetic. Otherwise hit any key to continue with a random card."
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

  def options
    puts "If you are a quitting quitter who wants to quit type 'QUIT', loser!"
    puts "If you want to try and fail again, type 'AGAIN'."
    puts "If you want to see how many times you have screwed up on this one, type GUESSES"
    puts "If you want to be a stinking cheater, type ANSWER to view the answer."
    puts "Otherwise hit any key to get the next card."
    sleep(0.25)
    puts "(I suggest you 'QUIT')"

  end

  def incorrect_message
    puts ""
    puts ["Stop wasting my time.", "You suck!", "Wow, even my dog's dog got that question right.", "You ARE the weakest link... GOODBYE!", "Ok..."].sample
  end

end
