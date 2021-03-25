require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if check?
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side2 == side3 || side1 == side3 || side1 == side2  
      :isosceles
    else
      :scalene
    end
  end

  def check?
    # if [side1, side2, side3].each {|side| side <= 0} 
    if side1 <= 0 || side2 <= 0 || side3 <= 0|| (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 + side3) <= side2
      true
    else
      false
    end
  end

  class TriangleError < StandardError
  end
end