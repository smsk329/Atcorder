# 1000円札、5000円札、10000円冊の枚数をn枚、y円になることがある場合はその組み合わせを１つ出力する。ない場合は「-1,-1,-1」を出力する。

n,y = gets.chomp.split(" ").map(&:to_i)

(0..n).each do |i|
  (0..n-i).each do |j|
    k = n - i - j

    if 10000 * i + 5000 * j + 1000 * k == y
      puts "#{i} #{j} #{k}"
      exit
    end

  end
end

puts "-1 -1 -1"