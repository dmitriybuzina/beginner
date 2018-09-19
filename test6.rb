@@resultArray = Array.new
def get_all(array, type)
  array.each do |subArray|
    if subArray.is_a?Array
      subArray.each do |item|
        if item.is_a?Array
          local = get_all(item,type)
          if local.is_a?type
            @@resultArray.push(local)
          end
        end
      end
      subArray.each do |item|
        if item.is_a?type
          @@resultArray.push(item)
        end
      end
    elsif  subArray .is_a?Hash
      subArray.each do |key,value|
        if value.is_a?type
          @@resultArray.push(value)
        end
      end
    elsif subArray.is_a?type
      @@resultArray.push(subArray)

      subArray.each do |item|
        if item.is_a?type
          @@resultArray.push(item)
        end
      end
    end
  end
  @@resultArray
end

print get_all([[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]], Integer)