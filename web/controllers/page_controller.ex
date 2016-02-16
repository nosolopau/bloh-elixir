defmodule BlohElixir.PageController do
  use BlohElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
