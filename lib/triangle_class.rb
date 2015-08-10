require 'pry'
class MyTriangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    sum = @side1 + @side2
      if sum < @side3
        false
      elsif sum >= @side3
        true
      end
  end
  define_method(:equilateral?)do
    if @side1 = @side2 = @side3
      true
    end
  end
end
