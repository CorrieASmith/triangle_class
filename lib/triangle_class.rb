
class MyTriangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    sum = @side1 + @side2
      if sum >= @side3
        true
      elsif sum < @side3
        false
      end
  end

  define_method(:equilateral?) do
    if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      true
    else
      false
    end
  end

  define_method(:isosceles?) do
    if self.equilateral?()
      false
    elsif @side1 == @side2 || @side3 == @side2 || @side3 == @side1
      true
    else @side1 != @side2 || @side3 != @side2 || @side3 != @side1
      false
    end
  end

  define_method(:scalene?) do
    if @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      true
    else
      false
    end
  end

end
