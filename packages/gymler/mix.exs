defmodule Gymler.MixProject do
  use Mix.Project

  @githuburl "https://github.com/gymlr/gymlr"

  def project do
    [
      app: :gymler,
      version: "0.1.0",
      elixir: "~> 1.13",
      description: "The Gymler Elixir package",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      authors: ["vKxni"],
      links: %{
        "GitHub" => @githuburl
      },
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:poison, "~> 5.0"}
    ]
  end
end
