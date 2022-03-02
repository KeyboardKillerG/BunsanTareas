defmodule Orders do
  def calculate_total(taxes, net_amount, ship_to) do
  (Map.get(taxes, ship_to, 0) + 1) * net_amount
 end
 def rates(taxes, orders) do
  Enum.map(orders, fn x -> Map.put(x, :total_amount, Orders.calculate_total(taxes, x.net_amount, x.ship_to)) end)
 end
end

