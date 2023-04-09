# アリスのカードが大きくなるようにアリスとボブが交互にカードを引く。ただし最初に引くのはアリス
# アリスはボブに何点差をつけて勝ったかを出力する

n = gets.chomp.to_i
i = gets.chomp.split(' ').map(&:to_i).sort.reverse
alice = 0
bob = 0

# each_with_indexは配列に番号をふる。
# 配列の最初の数字が０なので、偶数の場合にアリスがカードを引く
i.each_with_index do |n, i|
  if i.even?
    alice = alice + n
  else
    bob = bob + n
  end
end

puts alice - bob


