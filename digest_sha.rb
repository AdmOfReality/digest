# frozen_string_literal: true

# Программа для шифрования слова алгоритмами SHA1/2, MD5
# Встроенная библиотека Ruby
require 'digest'
# Дальнейший код
puts 'Введите слово или фразу для шифрования:'
word = gets.chomp.to_s
puts "Каким способом зашифровать:
1. MD5
2. SHA1
3. SHA2"
way = gets.chomp.to_i
case way
when 1
  result = Digest::MD5.hexdigest(word)
when 2
  result = Digest::SHA1.hexdigest(word)
when 3
  result = Digest::SHA2.hexdigest(word)
end
puts "Вот что получилось:
#{result}"
