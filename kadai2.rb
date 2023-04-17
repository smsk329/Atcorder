
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