
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

#array = [1,2,3,4,15]
#puts sum([])
#puts sum(array)

#puts max_2_sum([])
#puts max_2_sum([5])
#puts max_2_sum(array)
#puts max_2_sum([1,2,3,3])

#puts array
#puts sum_to_n?([], 5)
#puts sum_to_n?(array, 5)
#puts sum_to_n?(array, 4)
#puts sum_to_n?(array, 15)
#puts sum_to_n?(array, 3)
#puts sum_to_n?(array, 7)
#puts sum_to_n?(array, 6)
#puts sum_to_n?(array, 16)
#puts sum_to_n?([], 0)
