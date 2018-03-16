# r2: addition or square
def iterator arr, operation=:add
  index = 0
  while index < arr.length
    case operation
    when :square
      puts arr[index] * arr[index]
    else
      puts arr[index] + arr[index]
    end
    index += 1
  end
end

iterator [1, 2, 3], :square


