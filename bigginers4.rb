# 入力した値がすべて偶数のとき、２で割ることができる。２で割る最大回数を出力する。

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
kaisuu = 0

# 配列の中身をすべて取り出して、偶数かどうかを判定する
while a.all? {|x| x.even?} do
  a = a.map {|x| x / 2}
  kaisuu = kaisuu + 1
end

puts kaisuu

