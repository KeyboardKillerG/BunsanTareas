defmodule Github do
  HTTPotion.start
  @username "KeyboardKillerG"
  "https://api.github.com/users/#{@username}/repos"
    |> HTTPotion.get(headers: ["User-Agent": @username])
    #|>IO.inspect()
    |> Map.get(:body)
    #|>IO.inspect()
    |> Poison.decode!()
    |>IO.inspect()
    |> Enum.each(fn repo ->
      def unquote(String.to_atom(repo["name"]))() do
        unquote(Macro.escape(repo))
      end
    end)
  def go(repo) do
    url = apply(__MODULE__, repo, [])["html_url"]
    IO.puts "Launching browser to #{url}..."
    #xdg-open works in Linux
    System.cmd("xdg-open", [url])
  end
end
