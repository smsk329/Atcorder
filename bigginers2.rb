# ２つの数字を入力し、その席が奇数の場合は「odd」偶数の場合は「even」と出力する

a,b = gets.chomp.split(" ").map(&:to_i)

if a * b % 2 == 1
 puts "Odd"
else
 puts "Even"
end