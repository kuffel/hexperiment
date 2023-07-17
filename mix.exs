defmodule Hexperiment.MixProject do
  use Mix.Project

  @source_url "https://github.com/kuffel/hexperiment"
  @version "0.1.1"

  def project do
    [
      app: :hexperiment,
      description: description(),
      package: package(),
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    """
    Just an experiment to evaluate private hex repos, nothing to see here.
    """
  end

  defp package() do
    [
      maintainers: ["Adam Kuffel"],
      licenses: ["MIT"],
      links: %{"Github" => @source_url}
    ]
  end

  defp docs() do
    [
      main: "readme",
      name: "Hexperiment",
      source_ref: @version,
      canonical: "http://hexdocs.pm/hexperiment",
      source_url: @source_url,
      extras: ["README.md", "CHANGELOG.md", "LICENSE"]
    ]
  end
end
