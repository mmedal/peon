defmodule Peon.Mixfile do
  use Mix.Project

  def project do
    [
      app: :peon,
      name: "Peon",
      description: "Easy task/process pooling for on-demand
                    or cron-able tasks.",
      package: package(),
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [
        tool: ExCoveralls
      ],
      preferred_cli_env: [
        "coveralls": :test,
        "coveralls.detail": :test,
        "coveralls.html": :test,
        "coveralls.travis": :test
      ]
    ]
  end

  def package do
    [
      maintainers: ["Matthew Medal"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mmedal/peon"}
    ]
  end

  def application, do: []

  defp deps do
    [
      {:dogma, "~> 0.1.13", only: [:dev, :test]},
      {:excoveralls, "~> 0.6.1", only: [:dev, :test]},
      {:power_assert, "~> 0.0.8", only: [:dev, :test]}
    ]
  end
end
