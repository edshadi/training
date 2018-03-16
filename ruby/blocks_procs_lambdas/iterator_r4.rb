# r4: we want to support random operation on the array and also we want to add cube to the possible operations
def iterator arr, operation=:add, order=:normal
  index = 0
  arr.reverse! if order == :reverse
  arr.shuffle! if order == :random
  while index < arr.length
    case operation
    when :square
      puts arr[index] * arr[index]
    when :cube
      puts arr[index] * arr[index] * arr[index]
    else
      puts arr[index] + arr[index]
    end
    index += 1
  end
end

iterator [1, 2, 3], :cube, :random


