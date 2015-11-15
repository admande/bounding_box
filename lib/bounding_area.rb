require "pry"


class BoundingArea
  def initialize area
    @area = area
  end

  def boxes_contain_point?(x,y)
    flag = false
    if @area.empty?
      flag = false
    else
      @area.each do |box|
        if box.contains_point?(x,y)
          flag = true
          break
        else
          flag = false
        end
      end
      flag
    end
  end

end
