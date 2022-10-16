defmodule GymlerTest do
  use ExUnit.Case

  test "read the json file" do
    assert with {:ok, json} <- Gymler.read_data(), do: {:ok, json}
  end
end
