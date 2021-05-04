# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
# def triangle(a, b, c)
#   x=[a,b,c]
#   u= x.uniq.count
#   if x.any? {|i| i < 1} || ((a+b <= c) || (a+c <= b) || (b+c <= a))
#     raise TriangleError
#   end 
#   if u>2
#     return :scalene
#   elsif u == 2
#     return :isosceles
#   else
#     return :equilateral
#   end
# end

# raise TriangleError unless a > 0
# raise TriangleError unless a + b > c
# return :equilateral if a == c
# return :isosceles if a == b or b == c
# :scalene

def triangle(a, b, c)
  a, b, c = sides = [a, b, c].sort
  raise TriangleError unless a > 0 and a + b > c
  [:scalene, :isosceles, :equilateral][-sides.uniq.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
