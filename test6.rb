=begin
Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов
=end

class Test6
 def get_all(array, type)
   result_array = []
   array.each do |sub_array|
    if sub_array.is_a? Array
      sub_array.each do |item|
        if item.is_a? Array
          array.push(get_all(item, type))
        end
      end
      sub_array.each do |item|
        if item.is_a? type
          result_array.push(item)
        end
      end
    elsif  sub_array .is_a? Hash
      sub_array.each do |key,value|
        if value.is_a? type
          result_array.push(value)
        end
      end
    end
  end
  result_array
 end
end


