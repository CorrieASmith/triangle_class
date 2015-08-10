require 'pry'
class MyTriangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:triangle?) do
    sum = @side1 + @side2
      if sum <= @side3
        false
    end
  end
end
