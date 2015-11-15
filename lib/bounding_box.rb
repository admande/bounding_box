class BoundingBox
  attr_reader :x, :y, :width, :height, :left, :right, :bottom, :top
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @left = x
    @right = x + width
    @bottom = y
    @top = y + height
  end

  def contains_point?(point_x,point_y)
    flag = true
    if point_x >= @left && point_x <= @right ? true : flag = false ; end
    if point_y >= @bottom && point_y <= @top ? true : flag = false ; end
      flag
  end
end
