1. Implement merge sort. What's the bigO and why?
https://media.giphy.com/media/jA8TT03Sj2pXO/giphy.gif

2. Write a method to reverse a string. (Hint: You cannot use reverse method)
def reverse_string(str)
  num = (str.length)/2
  num.times do |i|
    last = str.length-i-1
    temp = str[i]
    str[i] = str[last]
    str[last] = temp
  end
  str
end

3. Write a method to see if string is a palindrome
def palindrome?(str)
  num = (str.length)/2
  num.times do |i|
    return false if str[i] != str[str.length-i-1]
  end
  true
end

4. Given the root note in a sorted binary search tree, how do you find the smallest element?
You would go from the root node to the left until there are no left nodes left.
