# n = gets.to_i
# elevator = n.times.map {gets.to_i}
# gokei = 0

# # nは階数、iは配列の番号

# # 階数 3 →　3｛0｝,1｛1｝,4｛2｝
# previous_floor = elevator[0]

# elevator.each do |current_floor|
#   if previous_floor == elevator[0]
#     gokei = elevator[0] - 1
#   end
#     f = previous_floor - current_floor
#     gokei = gokei + f.abs
#     previous_floor = current_floor
# end

# puts gokei

# 上記のコードで例文は正解したけど正しいコードではないようだったので正解は↓

n = gets.to_i
elevator = n.times.map {gets.to_i}
gokei = 0

previous_floor = 1 # エレベーターが最初にいる階数を1とする

elevator.each do |current_floor|
  f = previous_floor - current_floor
  gokei += f.abs # 差分を絶対値で計算して累積する
  previous_floor = current_floor # 前回の階数を現在の階数に更新する
end

puts gokei

