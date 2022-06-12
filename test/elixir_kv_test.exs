defmodule ElixirKvTest do
  use ExUnit.Case
  doctest ElixirKv

  test "greets the world" do
    assert ElixirKv.hello() == :elixir
  end
end
