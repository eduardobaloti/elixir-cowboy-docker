defmodule SimpleCowboy do
  import Plug.Conn

  def init(options) do
    options
  end

  @spec call(Plug.Conn.t(), any) :: Plug.Conn.t()

  def call(conn, _opts) do
    conn
    |> put_resp_header("content-type", "text/html; charset=utf-8")
    |> Plug.Conn.send_file(200, "page.html")
  end

end
