function bisseccao(f, a, b)
  x = (a+b)/2
  while abs(b-a) > 1e-6 || abs(f(x)) > 1e-6
    a,b = f(x)*f(a) < 0 ? (a,x) : (x,b)
    x = (a+b)/2
  end
  return x
end

function foo(n)
  f(x) = exp(-x) - x
  t = time()
  for i = 1:n
    w = bisseccao(f, 0, 1)
  end
  println("t = $((time() - t)/n)")
end

@time foo(10000)
@time foo(10000)
@time foo(10000)
