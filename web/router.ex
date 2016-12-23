defmodule Mmserver.Router do
  use Mmserver.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", Mmserver do
    pipe_through :api
    # Route stuff to our SessionController
    resources "session", SessionController, only: [:index]
  end
end
