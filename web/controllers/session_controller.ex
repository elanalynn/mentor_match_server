defmodule Mmserver.SessionController do 
  use Mmserver.Web, :controller

  def index(conn, _params) do
    conn|> json(%{status: "Ok"})
  end
end
