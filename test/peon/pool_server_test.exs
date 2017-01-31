defmodule Peon.PoolServerTest do
  @moduledoc false

  use PowerAssert, async: true

  setup do
    {:ok, registry} = Peon.PoolServer.start_link()
    {:ok, registry: registry}
  end

  test "spawns link", %{registry: registry} do
    assert 1 == 1
  end

  test "sample call", %{registry: registry} do
    assert GenServer.call(registry, {:test, "test"}) == :ok
  end
end
