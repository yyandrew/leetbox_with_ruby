# Longest Substring Without Repeating Characters
# Given a string, find the length of the longest substring without repeating characters.
# Given "abcabcbb", the answer is "abc", which the length is 3.
# Given "bbbbb", the answer is "b", with the length of 1.
# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
def length_of_longest_substring(s)
  s.size.downto(1).to_a.each do |len|
    dog = 0
    while dog <= s.size - len do
      sub_string = s[dog, len].split('').uniq.join('')
      return sub_string if sub_string.size == len
      dog += 1
    end
  end
end

length_of_longest_substring('abcabcbb') # result: abc
length_of_longest_substring('bbbbb') # result: b
length_of_longest_substring('pwwkew') # result: wke
