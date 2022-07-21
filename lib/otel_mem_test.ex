defmodule OtelMemTest do
  require OpenTelemetry.Tracer

  def run do
    Stream.cycle([1])
    |> Task.async_stream(&log_otel/1)
    |> Stream.run()
  end

  def log_otel(_) do
    OpenTelemetry.Tracer.with_span("my-span") do
      1 + 1
    end
  end
end
