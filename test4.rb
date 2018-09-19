
def getHashValue (hash, key)
  hash.each do |k, v|
    if k == key
      print hash[k]
    elsif v.is_a? Hash
      getHashValue(hash[k],key).each do |k, v|
      end
    end
  end
end

hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
getHashValue(hash, :key9)
