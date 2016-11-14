defmodule BlohElixir.PostController do
  use BlohElixir.Web, :controller

  plug :assign_welcome_message, "Welcome miau" when action in [:index]

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome")
    |> render "index.html"
  end

  def show(conn, %{"id" => id}) do
    # json conn, %{"id" => id}
    render conn, "show.html", id: id
  end

  defp assign_welcome_message(conn, msg) do
    assign(conn, :message, msg)
  end
end
