defmodule GymlrWeb.SuppController do
  use GymlrWeb, :controller

  @moduledoc """
  This will return all supps from the data.
  """

  def read_json do
    {:ok, body} = File.read("static/supps.json")
    Poison.decode!(body)
  end

  def index(conn, _params) do
    conn |> json(%{supplements: read_json()})
  end
end
