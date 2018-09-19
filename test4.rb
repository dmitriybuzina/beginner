=begin
Написать рекурсивный метод для поиска значения ключа key9 в хеше:
=end

class Test4
  def get_hash_value (hash, key)
    hash.each do |k, v|
      if k == key
        print hash[k]
        puts
      elsif v.is_a? Hash
        get_hash_value(hash[k], key)
      end
    end
  end
end

