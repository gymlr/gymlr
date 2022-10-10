defmodule GymlrWeb.MainController do
  use GymlrWeb, :controller

  @github_url "https://github.com/gymlr/gymlr/tree/master/api/gymlr#usage"

  def index(conn, _params) do
    path = @github_url
    conn |> redirect(external: path) |> halt()
  end
end
