def drawCircle(radius)
  posX = 10
  posY = 20
  for i in 0..posX+radius
    for j in 0..posY+radius
      xSquared = (i - posX)*(i - posX)
      ySquared = (j - posY)*(j - posY)
      if((xSquared+ySquared - radius*radius).abs < radius)
        print "*"
      else
        print " "
      end
    end
    puts
  end
end

print "Write radius(from 1 to 10) \n"
radius = gets.chomp
drawCircle(radius.to_i)