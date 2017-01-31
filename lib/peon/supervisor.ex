defmodule Peon.Supervisor do
  @moduledoc false

  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def start_pool do
    Supervisor.start_child(__MODULE__, [])
  end

  def init(:ok) do
    children = [
      worker(Peon, [], restart: :transient)
    ]

    supervise(children, strategy: :simple_one_for_one)
  end
end
