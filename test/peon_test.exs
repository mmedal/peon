defmodule PeonTest do
  use PowerAssert
  doctest Peon

  test "hello world" do
    assert Peon.hello() == :world
  end
end
