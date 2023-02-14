class Triangle
  # write code here
  attr_accessor :kind

  def initialize(l1, l2, l3)
    @l1=l1
    @l2=l2
    @l3=l3

    if l1 <= 0 || l2 <= 0 || l3 <= 0 || l1+l2<=l3 || l2+l3<=l1 || l1+l3<=l2
      raise TriangleError
    elsif l1==l2 && l2==l3
      @kind = :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
     "Invalid sizes"
    end
  end
end
