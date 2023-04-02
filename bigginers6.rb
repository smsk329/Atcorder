N,A,B=gets.chomp.split(" ").map(&:to_i);
ans = 0

(1..N).each do |i|
  # 数字を文字列として変換し、各桁を足し合わせる
  gokei = i.to_s.split("").map(&:to_i).sum;
  if A <= gokei && gokei <= B
    ans = ans + i
  end
end

puts ans
