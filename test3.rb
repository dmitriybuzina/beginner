def generateMatrix(length)
  matrix = Array.new(length){Array.new(length)}
  for i in 0...length
    for j in 0...length
      if i == j
        matrix[i][j] = 1
      else
        matrix[i][j] = 0
      end
    end
  end
  for i in 0...length
    for j in 0...length
      print matrix[i][j]
    end
    puts
  end
end

print "Write length \n"
length = gets.chomp
generateMatrix(length.to_i)