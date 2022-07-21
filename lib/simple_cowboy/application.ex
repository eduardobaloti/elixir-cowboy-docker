defmodule SimpleCowboy.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start `SimplePlugRest` and listen on port 3000
      {Plug.Cowboy, scheme: :http, plug: SimpleCowboy, options: [port: 3000]}
    ]

    opts = [strategy: :one_for_one, name: SimpleCowboy.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
