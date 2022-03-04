defmodule MyList do
  def each([], _) do
    :ok
  end
  
  def each([h|t], f) do
    f.(h)
    each(t,f)
  end
  
  def map([], _) do
    []
  end
  
  def map([h|t], f) do
    [f.(h)] ++ map(t,f)
  end
  
  def reduce([],ac,_) do
    ac
  end
  
  def reduce([h|t], ac, f) do
    reduce(t, f.(h,ac), f)
  end 
  
  def zip([],_) do
    []
  end
  
  def zip(_,[]) do
    []
  end
  
  def zip([h1|t1], [h2|t2]) do
    [{h1,h2}] ++ zip(t1,t2)
  end
  
  def zip_with([],_,_) do
    []
  end
  
  def zip_with(_,[],_) do
    []
  end
  
  def zip_with([h1|t1], [h2|t2], f) do
    [f.(h1,h2)] ++ zip_with(t1,t2,f)
  end
  
end
