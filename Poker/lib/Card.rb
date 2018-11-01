class Card

  attr_reader :suit, :color, :value

  def initialize(suit, color, value)
    @suit, @color, @value = suit, color, value
  end

  def inspect
    "suit: #{suit}, color: #{color}, value: #{value}"
  end

end
