# r5: ok, we can't come to you everytime we want to add an operation, can you please build us an iterator that supports any number of operations?


def iterator arr, &operation
  index = 0
  while index < arr.length
    puts operation.call arr[index] if block_given?
    index += 1
  end
end
iterator([1, 2, 3]) {|i| i*i*i }

def iterator arr, operation1, operation2
  index = 0
  while index < arr.length
    puts operation1.call(arr[index])
    puts operation2.call(arr[index])
    index += 1
  end
end

operation1 = lambda {|i| i*i }
operation2 = lambda {|i| i+i }
iterator [1, 2, 3], operation1, operation2
