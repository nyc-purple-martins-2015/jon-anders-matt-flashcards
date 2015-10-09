require 'csv'
require_relative './card'
require_relative 'deck'

class Parser


  def initialize(filename='./flashcards.csv')
    @filename = filename
    @parser_array = []
  end

  def parse_file

    # # file=File.open(filename, 'r')
    # contents=file.read
    # c_1 = contents.split("\n")
    # for index in 0...c_1.length
    #   Card.new(c_1[index], c_1[index+1])
    #   index+=2
    # end
    # # # c_1.each{|thing| puts thing}
    # # p c_1[0]

    # File.open(filename).readlines.each_with_index do |line, index|
    #   puts "#{index}: #{line}"
    #   Card.new({definition: , word: })

    # end
    stack = []
        CSV.foreach(filename, :col_sep => '|', :headers=> ["word","definition"], :header_converters=> :symbol,
          :converters => :all) do |row|
      stack << Card.new(row)
    end
      Deck.new(stack)
    end



  # end

  private

  attr_reader :filename

end

parser=Parser.new

p parser.parse_file

