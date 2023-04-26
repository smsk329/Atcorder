
# if nums.bsearch{|num| num == target}
#   puts num.index
# end

# def solution(nums,target)
#   if nums.include?(target)
#   nums.bsearch_index{|num| num == target}
#   else
#     result = []
#  ※resultという新たな変数は不要。空の配列も不要。
#     result = result << target
#     result = result.sort.inspect
#     result.bsearch_index{|num| num == target}
#   end
# end

def solution(nums, target)
  if nums.include?(target)
    nums.bsearch_index { |num| num <=> target }
  else
    nums.push(target).sort.bsearch_index { |num| num <=> target }
  end
end


nums = gets.chomp.split(",").map(&:to_i)
target = gets.to_i
puts solution(nums, target)

i = 1
while i <= 10 do
  if i == 5
    puts "処理を終了します"
    break  # iが5になると繰り返しから抜ける
  end
  puts i
  i += 1 # iの数値に1を加えたい時は、i = i +1と書く代わりに、i += 1と書くことができます。
end

def fizz_buzz(number)
  if number % 15 == 0
    "FizzBuzz"
  elsif number % 3 == 0
    "Fizz"
  elsif number % 5 == 0
    "Buzz"
  else
    number.to_s
  end
end

puts "数字を入力してください。"

input = gets.to_i

puts '結果は...'
puts fizz_buzz(input) 