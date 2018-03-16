# r1: create simple method that takes an array of integers and each element to itself.
def iterator arr
  index = 0
  while index < arr.length
    puts arr[index] + arr[index]
    index += 1
  end
end

iterator [1, 2, 3]
