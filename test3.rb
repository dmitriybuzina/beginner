=begin
Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.
=end

class Test3
  def generate_matrix()
    print "Write length \n"
    length = gets.chomp.to_i
    matrix = Array.new(length){ Array.new(length) }
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
end

