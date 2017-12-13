#write your code here
def add(a, b)
  return a + b
end

def subtract(c, d)
  return c - d
end

def sum(g)
  g.inject(0, :+)
end

def multiply(*e)
  result = 1
  e.each{|f| result = result*f }
  return result
end

def factorial(x, y)
  if y == 0
    return 1
  else
    return x ** y
  end
end
