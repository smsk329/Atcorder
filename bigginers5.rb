# a=500円玉、b=100円玉 c=50円玉を指定の枚ずつ与えられたとき、金額がx円になる組み合わせは何通りあるか
# xは50の倍数で入力すること

A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

count = 0
# each文の中にeach文を入れることで全探索をする
(0..A).each do |i|
  (0..B).each do |j|
    (0..C).each do |k|

      if
        500 * i + 100 * j + 50 * k == X
        count = count + 1
      end

    end
  end
end

puts count