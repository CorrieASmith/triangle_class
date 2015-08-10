require('rspec')
require('triangle_class')

describe(MyTriangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = MyTriangle.new(5, 5, 20)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
end
