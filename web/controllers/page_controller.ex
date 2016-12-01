defmodule MmServer.PageController do
  use MmServer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
