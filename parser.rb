require 'csv'
require_relative './card'
require_relative 'deck'

class Parser



  def initialize(filename='./flashcards.csv')
    @filename = filename
    @deck = nil
  end

  def parse_file(the_file = @filename)
    stack = []
        CSV.foreach(the_file, :col_sep => '|', :headers=> ["word","definition"], :header_converters=> :symbol,
          :converters => :all) do |row|
      stack << Card.new(row)
    end
      Deck.new(stack)
    end

  private

  attr_reader :filename

end



