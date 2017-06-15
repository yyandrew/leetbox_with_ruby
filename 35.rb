# Search Insert Position
# [1,3,5,6], 5 -> 2
# [1,3,5,6], 2 -> 1
# [1,3,5,6], 7 -> 4
# [1,3,5,6], 0 -> 0
#

def search_insert(nums, target)
  idx = nums.index(target)
  return idx unless idx.nil?
  first = nums.first
  last = nums.last
  return nums.size if target > last
  return 0 if target < first
  target.downto(first).to_a.each do |e|
    idx = nums.index(e)
    return idx + 1 unless idx.nil?
  end
  return 'Not found'
end
arr = [1,3,5,6]
search_insert(arr, 5) # result: 2
search_insert(arr, 2) # result: 1
search_insert(arr, 7) # result: 4
search_insert(arr, 0) # result: 0
