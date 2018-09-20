=begin
Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.
=end

class Test2
  def draw_circle()
    print "Write radius(from 1 to 10) \n"
    radius = gets.chomp.to_i
    pos_x = 10
    pos_y = 20
    for i in 0..pos_x + radius
      for j in 0..pos_y + radius
        x_squared = (i - pos_x) * (i - pos_x)
        y_squared = (j - pos_y) * (j - pos_y)
        if((x_squared + y_squared - radius * radius).abs < radius)
          print "*"
        else
          print " "
        end
      end
      puts
    end
  end
end
