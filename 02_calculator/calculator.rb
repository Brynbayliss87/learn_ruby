def add(arg1, arg2)

  arg1 + arg2

end


def subtract(arg1, arg2)

  arg1 - arg2

end

def sum(arr)
  
  total =0

  if arr.empty?
   total = 0 
  elsif arr.length == 1
    total = arr[0] 
  elsif arr.length == 2
    total = arr[0] + arr[1]
  else
    arr.each do  |i|
      total+=i
    end
  end
  total
end

def multiply(arr)

  total = 0

  if arr.length == 2
    total = arr[0] * arr[1]
  else
    arr.each do |i|
      total *= i
    end
  end
  total
end
