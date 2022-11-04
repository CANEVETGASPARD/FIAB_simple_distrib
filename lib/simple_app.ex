defmodule SimpleDistrib.App do
  use Application
  def start(_,_) do
    Supervisor.start_link([
      GenAdder
    ], strategy: :one_for_one)
  end
end

defmodule Adder do
  def add(a, b), do: a + b
end

defmodule GenAdder do
  use GenServer

  def start_link(_), do: GenServer.start_link(__MODULE__, nil, name: __MODULE__)

  def init(_) do
    {:ok, nil}
  end

  def handle_call({:add, a, b}, _from, nil) do
    {:reply, a + b, nil}
  end
end
