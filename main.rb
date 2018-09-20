require_relative 'test1.rb'
require_relative 'test2.rb'
require_relative 'test3.rb'
require_relative 'test4.rb'
require_relative 'test5.rb'
require_relative 'test6.rb'

module Main
  module_function
  def main_function
    number = nil
    while number != 0
      puts "Print number of test(from 1 to 6 - tests, 0 - exit) \n"
      number = gets.chomp.to_i
      if number >= 1 && number <= 6
        case number
        when 1
          test1 = Test1.new
          test1.first
        when 2
          test2 = Test2.new
          test2.draw_circle()
        when 3
          test3 = Test3.new
          test3.generate_matrix()
        when 4
          test4 = Test4.new
          test4.get_hash_value({key1: {}, key2: {}, key3: {key4: 'str', key5: 'str2', key6: {key7: {key8: 1, key9: [2] } } }}, :key9)
        when 5
          test5 = Test5.new
          local = nil
          while local != 0
            puts "Print number of test(1 - underscore, 2 - camel, 3 - css, 0 - exit from test) \n"
            local = gets.chomp.to_i
            case local
            when 1
              test5.formatize(str = 'i love ruby', :underscore)
            when 2
              test5.formatize(str = 'i love ruby', :camel)
            when 3
              test5.formatize(str = 'i love ruby', :css)
            end
          end
        when 6
          test6 = Test6.new
          local = nil
          while local != 0
            puts "Print number of test(1 - Integer, 2 - String, 0 - exit from test) \n"
            local = gets.chomp.to_i
            case local
            when 1
              print test6.get_all([[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]], Integer).to_s + "\n"
            when 2
              print test6.get_all([[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]], String).to_s + "\n"
            end
          end
        end
      end
    end
  end
end

Main.main_function()