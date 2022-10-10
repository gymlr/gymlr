defmodule GymlrWeb.MusclesController do
  use GymlrWeb, :controller

  @moduledoc """
  This will return all supps from the muscle category.
  """

  def read_json do
    {:ok, body} = File.read("static/supps.json")
    Poison.decode!(body)["muscles"]
  end

  def index(conn, _params) do
    conn |> json(%{muscles: read_json()})
  end
end
