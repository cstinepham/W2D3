class Array
  def my_uniq
    final = []
    self.each do |el|
      final << el unless final.include?(el)
    end
    final
  end

  def two_sum
    final = []

    i = 0
    while i < self.length - 1
      j = i+1
      while j < self.length
        if self[i] + self[j] == 0
          final << [i,j]
        end
        j += 1
      end
      i += 1
    end
    final
  end
end

def my_transpose(array)
  result = Array.new(array[0].length) {[]}

  array.each do |row|
    row.each_with_index do |col, i|
      result[i] << col
    end
  end
  result
end

def stock_picker(array)
  final = nil
  greatest_stock_price = 0

  i = 0
  while i < array.length - 1
    j = i+1
    while j < array.length
      if array[j] - array[i] > greatest_stock_price
        greatest_stock_price = array[j] - array[i]
        final = [i,j]
      end
      j += 1
    end
    i += 1
  end
  final
end
