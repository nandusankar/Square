# To make a empty square
class Square
  def initialize(side)
    @side = side
    @count = side - 2
  end

  def first_last_line(side)
    side.times { print '#' }
    print "\n"
  end

  def middle_line
    @count.times { puts '#' + ' ' * @count + '#' }
  end

  def generate(side)
    first_last_line(side)
    unless side <= 2
      middle_line
      first_last_line(side)
    end
  end
end
print 'Enter the side length:'
side = gets.to_i
square = Square.new(side)
square.generate(side).to_s
