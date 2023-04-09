# １０進数を２進数に変換し、指定の桁の数字を出力する

n,x = gets.chomp.split(" ").map(&:to_i)
bits = x.to_s(2)
digits = n.times.map {gets.to_i}

digits.each do |d|
  if bits[-d] == "1"
    puts "1"
  else
    puts "0"
  end
end
