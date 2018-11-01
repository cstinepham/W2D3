require 'deck'
require 'card'
require 'byebug'

RSpec.describe "deck" do
  subject(:deck) {Deck.new}
  let(:card) {double("a card")}
  describe "#initialize" do
    it "Deck has 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "All things in deck are instances of Card class" do
      expect(deck.cards.all?{|el| el.is_a?(Card)}).to eq(true)
    end
  end

  describe "#deal" do
    it "Cards dealt out no longer show up in deck" do
      deck.deal(5)
      expect(deck.cards.length).to eq(47)
    end

    it "Cards dealt are the top of the deck" do
      # original_deck = deck.cards
      #dealed_cards = deck.deal(5)
      # expect(dealed_cards).to eq(original_deck[-5..-1])
      dealed_cards = deck.deal(5)

      expect(dealed_cards.none?{|el| deck.cards.include?(el)}).to eq(true)
    end
  end

  describe "#reset" do
    it "Deck has 52 cards" do
      expect(deck.reset.length).to eq(52)
    end

    it "All things in deck are instances of Card class" do
      expect(deck.reset.all?{|el| el.is_a?(Card)}).to eq(true)
    end
  end
end
