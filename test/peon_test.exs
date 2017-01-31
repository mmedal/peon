defmodule PeonTest do
  use PowerAssert
  doctest Peon

  setup do
    {:ok, registry} = Peon.start_link()
    {:ok, registry: registry}
  end

  test "spawns link", %{registry: registry} do
    assert registry == registry
  end

  test "sample call", %{registry: registry} do
    assert GenServer.call(registry, {:test, "test"}) == :ok
  end
end
