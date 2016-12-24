
defmodule Mmserver.RegistrationController do
  use Mmserver.Web, :controller

  alias Mmserver.User

  # def create(conn, %{"data" => %{"type" => "user",
  # 	"attributes" => %{"email" => email,
  # 	  "password" => password,
  # 	  "password_confirmation" => password_confirmation}}}) do
  # 	# Return some static JSON for now
  #   conn
  #   |> json(%{status: "Ok"})
  # end

  def create(conn, %{"data" => %{"type" => "users",
  "attributes" => %{"email" => email,
    "password" => password,
    "password-confirmation" => password_confirmation}}}) do

    changeset = User.changeset %User{}, %{email: email,
      password_confirmation: password_confirmation,
      password: password}

    case Repo.insert changeset do
      {:ok, user} ->
        conn
        |> put_status(:created)
        |> render(Peepchat.UserView, "show.json", user: user)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Peepchat.ChangesetView, "error.json", changeset: changeset)
    end

  end

end
