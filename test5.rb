=begin
Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case.
=end

class Test5
  def camel_case(str)
    chars = str.split(/[, \.?!]+/)
    chars.each do |x|
      x[0] = x[0].upcase
    end
    resultStr = chars.join
    puts resultStr
  end

  def underscore(str)
    chars = str.split(/[, \.?!]+/)
    result_str = chars.join('_')
    puts result_str
  end

  def css(str)
    chars = str.split(/[, \.?!]+/)
    result_str = chars.join('-')
    puts result_str
  end

  def formatize(str, type)
    if type == :camel
      camel_case(str)
    elsif type == :underscore
      underscore(str)
    elsif type == :css
      css(str)
    end
  end
end