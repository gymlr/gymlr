defmodule Gymler do
  @moduledoc """
  This is just a small Mix package that returns some JSON results based on the input.

  - health (vitamins) e.g. omega-3
  - boost (energy) e.g. creatine
  - muscle (protein) e.g. whey

  not too complex, we focus on the phoenix-api-server ...
  """
  def read_data do
    with {:ok, body} <- File.read("/home/koni/Desktop/gymlr/data/supplements.json"),
         {:ok, json} <- Poison.decode(body),
         do: {:ok, json}
  end

  def get_health do
    with {:ok, json} <- read_data(), do: {:ok, json["health"]}
  end

  def get_boost do
    with {:ok, json} <- read_data(), do: {:ok, json["boost"]}
  end

  def get_muscles do
    with {:ok, json} <- read_data(), do: {:ok, json["muscles"]}
  end
end
