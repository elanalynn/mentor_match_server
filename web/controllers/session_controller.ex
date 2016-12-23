defmodule Mmserver.SessionController do
  use Mmserver.Web, :controller

  def index(conn, _params) do
    # Return some static JSON for now
    conn
    |> json(%{status: "Okay"})
  end
end
