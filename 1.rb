# Given nums = [2, 7, 11, 15], target = 13,

# Because nums[0] + nums[2] = 2 + 11 = 13
# return [0, 2].

def two_sum(arr, result)
  indexs = []
  arr.each_with_index do |e, idx|
    indexs[0] = idx
    second_index = arr.index(result - e)
    indexs[1] = second_index
    return indexs if !second_index.nil? && second_index != idx
  end
  return 'not found'
end

arr = [2, 7, 11, 15]

puts two_sum(arr, 13).inspect # return: [0, 2]
