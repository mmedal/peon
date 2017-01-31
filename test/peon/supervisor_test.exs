defmodule Peon.SupervisorTest do
  @moduledoc false

  use PowerAssert, async: true

  setup do
    {:ok, registry} = Peon.Supervisor.start_link()
    {:ok, pool} = Peon.Supervisor.start_pool()
    {:ok, registry: registry, pool: pool}
  end

  test "spawns link", %{registry: registry} do
    assert registry == registry
  end

  test "supervisor spawns pool", %{registry: registry} do
    assert Supervisor.count_children(registry).active == 1
  end
end
