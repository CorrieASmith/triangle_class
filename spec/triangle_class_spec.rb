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
end
