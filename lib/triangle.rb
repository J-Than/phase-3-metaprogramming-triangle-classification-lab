class Triangle

  def initialize(side_a, side_b, side_c)
    @triangle = [side_a, side_b, side_c].sort
  end

  def kind
    if @triangle[0] <= 0
      raise TriangleError
    end
    if @triangle[0] + @triangle[1] <= @triangle[2]
      raise TriangleError
    end
    if @triangle[0] == @triangle[1]
      if @triangle[0] == @triangle[2]
        :equilateral
      else
        :isosceles
      end
    elsif @triangle[1] == @triangle[2]
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
