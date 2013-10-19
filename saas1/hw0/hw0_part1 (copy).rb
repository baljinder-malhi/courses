
def sum(array)
  sum = 0
  if !array.empty?
    array.each {|x| sum += x }    
  end
  
  return sum
end

def max_2_sum(array)
  sum = 0
  if !array.empty?
    if array.length == 1
      sum += array[0]
    else 
      s = array.sort
      sum = s[-1] + s[-2] 
      
    end    
  end
  
  return sum
end

def sum_to_n?(array, n)
  sum_to_n = false 
  if !array.empty?
    array.each_with_index do |element,index|
       subarray = array[(index + 1)..-1]
       subarray.each_with_index do |e ,  i|
         if n == element + e
            sum_to_n = true
            break
         end 
       end
    end 
  elsif array.empty? && n == 0
    sum_to_n = true 
  end
  
  return sum_to_n
end


