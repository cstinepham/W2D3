require 'game'

RSpec.describe "game" do
  subject(:game){(Game.new)}
  describe "#initialize" do
    it "Creates towers instance varaible with three empty arrays" do
      expect(game.towers).to eq([[3,2,1], [], []])
    end
  end

  describe "#valid_move?" do
    context "Is a valid move" do
      it "return true for valid move" do
        expect(game.valid_move?(0,2)).to eq(true)
      end
    end

    context "Is an invalid move" do
      it "return false for invalid move" do
        expect(game.valid_move?(2,0)).to eq(false)
      end

      it "returns false if from_tower disc is greater than to_tower disc" do
        game.towers = [[1,3],[2],[]]
        expect(game.valid_move?(0,1)).to eq(false)
      end
    end
  end

  describe "#move_disc" do
    it "moves disc successfully" do
      expect(game.move_disc(0,1)).to eq([[3,2], [1], []])
    end
  end

  describe "#won?" do
    it "Return true when game is won with all discs in the last tower" do
      game.towers = [[],[],[3,2,1]]
      expect(game.won?).to eq(true)
    end
    it "Return true when all discs are in the middle tower and game is won" do
      game.towers = [[],[3,2,1],[]]
      expect(game.won?).to eq(true)
    end
    it "Return False when game is not finished" do
      game.towers = [[],[3,1],[2]]
      expect(game.won?).to eq(true)
    end
    it "Return false when game is starting " do
      game.towers = [[3,2,1],[],[]]
      expect(game.won?).to eq(true)
    end

  end





  # describe "#get_move" do
  #   it "gets valid user input" do
  #     expect(game.get_move.to be_an_instance_of(Array)
  #   end
  # end
end
