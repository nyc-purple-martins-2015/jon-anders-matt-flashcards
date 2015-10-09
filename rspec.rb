require 'rspec'
require 'csv'
require_relative './parser.rb'
require_relative './card.rb'
require_relative './deck.rb'

describe Card do
  let (:card) {Card.new(definition: "demonstration" , word: "demo")}
  describe '#corret?' do
    it 'should change the value of the guessed_correctly attribute to true' do
     expect{card.correct?("demo")}.to change{card.guessed_correctly}.from(false).to(true)
    end
    it 'should return false if the word is not correct' do
      expect(card.correct?("thing")).to eq false
    end
  end
end

describe Deck do
  let (:card) {Card.new(definition: "demonstration" , word: "demo")}
  let(:deck) {Deck.new([card])}
  describe '#game_over?' do
    it 'should return false if there are any cards that have not been guessed correctly' do
      expect(deck.game_over?).to eq false
    end
  end
  describe '#pick_card' do
    it 'should select a card that has not been guessed correctly from the deck' do
      expect(deck.pick_card).to eq card
    end
  end
end
