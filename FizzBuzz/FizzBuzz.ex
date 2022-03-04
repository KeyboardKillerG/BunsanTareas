defmodule FizzBuzz do
  def pnum(x) do
    case [rem(x,3), rem(x,5)] do
      [t, f] when t * f == 0 -> ""
      _ -> Integer.to_string(x)
    end
  end
  
  def fizz(x) do
    case rem(x,3) do
      0 -> "Fizz"
      _ -> ""
    end
  end
  
  def buzz(x) do
    case rem(x,5) do
      0 -> "Buzz"
      _ -> ""
    end
  end
  
  def fizzbuzz(limit) do
   rg = 1 ..limit
   Enum.each(rg, fn x -> IO.puts(pnum(x) <> fizz(x)  <> buzz (x))  end)
  end
end
