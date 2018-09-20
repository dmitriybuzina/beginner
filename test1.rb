=begin
Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby".
=end

class Test1
  def first
    for i in 1...30 do
      if i == 10 || i == 20 || i == 25
        puts "ruby"
      else
        puts "<3 ruby"
      end
    end
  end
end
