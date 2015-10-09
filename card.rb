class Card

  attr_reader :definition, :word
  attr_accessor :guessed_correctly, :number_of_incorrect_guesses

  def initialize(args)
    @definition = args.fetch(:definition)
    @word = args.fetch(:word)
    @guessed_correctly= false
    @number_of_incorrect_guesses = 0
  end

# card word is equal to the word passed in as a parameter
  def correct?(word)
    if @word == word
      @guessed_correctly = true
      return true
    end
    false
  end


end
