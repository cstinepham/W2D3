class Game
  attr_accessor :towers
  def initialize
    @towers = [[3,2,1], [],[]]
  end

  def get_move
    puts "Please enter move"
    move = gets.chomp
    move = [move[0].to_i,move[-1].to_i]
  end

  def valid_move?(from_tower, to_tower)
    return false unless from_tower.between?(0,2) && to_tower.between?(0,2)
    return false if @towers[from_tower].empty?
    return true if @towers[to_tower].empty?
    return false if @towers[from_tower].last > @towers[to_tower].last
    return true
  end

  def move_disc(from_tower, to_tower)
    if valid_move?(from_tower, to_tower)
      @towers[to_tower] << @towers[from_tower].pop
      return @towers
    end
  end

  def won?
    return true if @towers = [[],[3,2,1],[]] || @towers = [[],[],[3,2,1]]
    return false
  end
end
