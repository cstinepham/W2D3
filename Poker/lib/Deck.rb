require 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = make_deck

  end

  def deal(num_of_cards)
    result = []
    num_of_cards.times { result << @cards.pop }
    result
  end

  def reset
    @cards = make_deck
  end

  protected
  def make_deck
    cards = []
    values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    suits = [:H, :D , :C, :S]
    color = [:R, :B]

    4.times.with_index do |i|
      values.each do |el|
          cards << Card.new(suits[i], color[i%2],el)
      end
    end
    cards
  end


end
