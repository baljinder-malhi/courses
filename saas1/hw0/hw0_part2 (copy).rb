
def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  start = false
  m = /[a-zA-Z]+/.match(s).to_s
  if !s.empty? && m.length == s.length && !s.start_with?("a","e","i","o","u","A","E","I","O","U")
    start = true
  end
  return start
end

def binary_multiple_of_4?(s)
  multiple = false
 if s.empty?
   return multiple
 end
  m = /[0-1]+/.match(s).to_s

  if m.length == s.length
    num = s.to_i(2)
    
      if num >= 4 &&  num % 4 == 0
        multiple = true
      end
  end

  return multiple
end


