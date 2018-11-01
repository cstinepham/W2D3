require 'card'

RSpec.describe "card" do
  subject(:card) {Card.new(:H, :R, "7")}
  describe "#initialize" do
    it "initializes suits" do
      expect(card.suit).to eq(:H)
    end

    it "initializes color" do
      expect(card.color).to eq(:R)
    end

    it "initializes value" do
      expect(card.value).to eq("7")
    end

  end
end
