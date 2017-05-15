class SumSquareDifference
  def initialize(number)
    counter = number
    array = []

    until counter == 0
      array << counter
      counter -= 1
    end

    array_squared = array.map do |a|
      a * a
    end

    @sum_squares = array_squared.inject {|sum, i| sum + i}

    array_sum = array.inject {|sum, i| sum + i}
    @square_sum = array_sum * array_sum
  end

  def difference
    @square_sum - @sum_squares
  end
end
