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
  else
    arr.each do  |i|
      total+=i
    end
  end
  total
end



class Calculator

  def multiply(*args)
    total = args.shift
    args.each do |i|
      total *= i 
    end
    total
  end

  def power(base, exponent)
    total = base
    exponent = exponent-1
    exponent.times do
      total *= base
    end
    total
  end

end
