defmodule OtelMemTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :otel_mem_test,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OtelMemTest.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry_api, github: "tsloughter/opentelemetry-erlang", branch: "drop-spans-no-exporter", override: true, sparse: "apps/opentelemetry_api"},
      {:opentelemetry, github: "tsloughter/opentelemetry-erlang", branch: "drop-spans-no-exporter", override: true, sparse: "apps/opentelemetry"},
      {:opentelemetry_exporter, github: "tsloughter/opentelemetry-erlang", branch: "drop-spans-no-exporter", sparse: "apps/opentelemetry_exporter"}
    ]
  end
end
