defmodule GymlrWeb.MainController do
  use GymlrWeb, :controller
  
  @moduledoc """
  Triggered once a user enters the basic url, without endpoint.
  Automatically redirects to the GitHub usage part. 
  """

  @github_url "https://github.com/gymlr/gymlr/tree/master/api/gymlr#usage"

  def index(conn, _params) do
    path = @github_url
    conn |> redirect(external: path) |> halt()
  end
end
