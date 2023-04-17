def solution(arr)
  # 空の配列を用意する
  result = []

  # arr の要素を2倍して、新しい配列 result に追加する
  arr.each do |element|
    result = result + [element * 2]
  end

  # 新しい配列 result を返す
  return result
end

arr = gets.chomp.split(",").map(&:to_i)
result = solution(arr)
puts result.inspect

# def solution(nums,target)
#   # 空の配列を用意する
#   result = []
  
#   nums.each do |x|
#     result = x << target
#   end

#   # 新しい配列 result を返す
#   return result
# end

# nums = gets.chomp.split(",").map(&:to_i)
# target = gets.to_i
# result = solution(nums,target)
# puts result.inspect

