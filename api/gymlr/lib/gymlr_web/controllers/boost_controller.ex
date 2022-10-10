defmodule GymlrWeb.BoostController do
  use GymlrWeb, :controller

  @moduledoc """
  This will return all supps from the boost category.
  """

  def read_json do
    {:ok, body} = File.read("static/supps.json")
    Poison.decode!(body)["boost"]
  end

  def index(conn, _params) do
    conn |> json(%{boost: read_json()})
  end
end
