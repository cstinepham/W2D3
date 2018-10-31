require 'function_practice.rb'


RSpec.describe 'function_practice' do
  describe "#my_uniq" do
    it "removes duplicates from array" do
      expect([1,2,2,3,3,4,5,6,5].my_uniq).to eq([1,2,3,4,5,6])
    end
  end

  describe "#two_sum" do
    it "Finds all pairs of positions where the elements at those positions sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it "smaller first elements come firstt" do
      expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[2,3], [0,4]])
    end

    it "then smaller second elements come first" do
      expect([-1, 0, 1, 1, 3].two_sum).to eq([[0,2], [0,3]])
    end
  end

  describe "#my_transpose" do
    it "convert between the row-oriented and column-oriented representations" do
      expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    it "picks two days with greatest profit" do
      expect(stock_picker([100, 300, 200, 400])).to eq([0,3])
    end
  end

end
