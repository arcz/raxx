defmodule Raxx.Elli.ResponseTest do
  use Raxx.Adapters.ResponseCase

  setup do
    port = 2022
    {:ok, _pid} = :elli.start_link [
      callback: Raxx.Adapters.Elli.Handler,
      callback_args: {__MODULE__, %{target: self()}},
      port: port]
    {:ok, %{port: port}}
  end

end