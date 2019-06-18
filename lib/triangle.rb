class Triangle
  attr_accessor :side1, :side2, :side3
<<<<<<< HEAD
  
=======
  @@all_sides = []
>>>>>>> c8f24d79b27da7f8a1874676459af0848514ca2c
  def initialize (side1,side2,side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3 
<<<<<<< HEAD
  @@all_sides = [side1,side2,side3]
=======
  @@all_sides  << self
>>>>>>> c8f24d79b27da7f8a1874676459af0848514ca2c
  end
  
  def valid? 
    if(@@all_sides.none? {|side| side <= 0}) && (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
      true
    else 
      false
  end
end

  def kind
    if valid? 
     if @@all_sides.uniq.length == 1 
      :equilateral
      elsif @@all_sides.uniq.length == 2
      :isosceles
    else @@all_sides.uniq.length == @@all_sides.length
      :scalene
    end
    else  
        raise TriangleError
end
  end


class TriangleError < StandardError 
    
end
end

