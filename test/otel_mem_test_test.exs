defmodule OtelMemTestTest do
  use ExUnit.Case
  doctest OtelMemTest

  test "greets the world" do
    assert OtelMemTest.hello() == :world
  end
end
