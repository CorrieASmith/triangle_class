require('rspec')
require('triangle_class')

describe(MyTriangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = MyTriangle.new(5, 5, 20)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end

    it("returns true if it is a triangle") do
      test_triangle = MyTriangle.new(5, 5, 10)
      expect(test_triangle.triangle?()).to(eq(true))
    end

  describe("#equilateral?") do
    it ("returns true if it is an equialiteral triangle") do
      test_equilateral = MyTriangle.new(5,5,5)
      expect(test_equilateral.equilateral?()).to(eq(true))
    end

    it("returns false if it is not an equilateral triangle") do
      test_equilateral = MyTriangle.new(7,5,6)
      expect(test_equilateral.equilateral?()).to(eq(false))
    end
  end

end
