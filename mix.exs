defmodule Gissues.Mixfile do
  use Mix.Project

  def project do
    [
      app: :gissues,
      escript: escript_config,
      version: "0.1.0",
      elixir: "~> 1.5",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.12"},
      {:poison, "~> 3.1"}
    ]
  end

  defp escript_config do
    [ main_module: Gissues.CLI ]
  end
end
