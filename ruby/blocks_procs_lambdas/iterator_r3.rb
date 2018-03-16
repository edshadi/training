# r3: occasionally we like to reverse the array first
def iterator arr, operation=:add, order=:normal
  index = 0
  arr.reverse! if order == :reverse
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

iterator [1, 2, 3], :square, :reverse


