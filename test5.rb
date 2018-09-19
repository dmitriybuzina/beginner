def camelCase(str)
  chars = str.split(/[, \.?!]+/)
  chars.each do |x|
    x[0] = x[0].upcase
  end
  resultStr = chars.join
  puts resultStr
end

def underScore(str)
  chars = str.split(/[, \.?!]+/)
  resultStr = chars.join('_')
  puts resultStr
end

def css(str)
  chars = str.split(/[, \.?!]+/)
  resultStr = chars.join('-')
  puts resultStr
end

def formatize(str, type)
  if type == :camel
    camelCase(str)
  elsif type == :underscore
    underScore(str)
  elsif type == :css
    css(str)
  end
end
str = 'i love ruby'
formatize(str, :underscore)