defmodule GymlrWeb.HealthController do
  use GymlrWeb, :controller

  @moduledoc """
  This will return all supps from the health category.
  """

  def read_json do
    {:ok, body} = File.read("static/supps.json")
    Poison.decode!(body)["health"]
  end

  def index(conn, _params) do
    conn |> json(%{health: read_json()})
  end
end
