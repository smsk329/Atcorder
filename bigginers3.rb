# ３つの数字（０か１のみ）を入力し、１の個数を数える

a,b,c = gets.chomp.split("").map(&:to_i)
print("#{a+b+c}\n")