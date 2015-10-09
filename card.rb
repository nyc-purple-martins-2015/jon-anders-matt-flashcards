class Card

  attr_reader :definition, :word
  attr_accessor :guessed_correctly

  def initialize(args)
    @definition = args.fetch(:definition)
    @word = args.fetch(:word)
    @guessed_correctly = false
  end


end
