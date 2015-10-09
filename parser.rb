require 'csv'
require_relative './card'
require_relative 'deck'

class Parser


  def initialize(filename='./flashcards.csv')
    @filename = filename
    @parser_array = []
  end

  def parse_file
    stack = []
        CSV.foreach(filename, :col_sep => '|', :headers=> ["word","definition"], :header_converters=> :symbol,
          :converters => :all) do |row|
      stack << Card.new(row)
    end
      Deck.new(stack)
    end

  private

  attr_reader :filename

end



