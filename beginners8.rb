# ｎ個の鏡餅を重ねたとき、最大で何枚の餅を重ねられるか。下からサイズが大きい順に積み、同じサイズの餅は積めないこととする。
n = gets.to_i
size = readlines.map(&:to_i).uniq
puts size.length

# ↓この記述だとちゃんとｎ個までで入力が終わる
n = gets.to_i
size = n.times.map {gets.to_i}.uniq
puts size.length