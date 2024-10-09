defmodule ThePlazaElixirChallengeTest do
  use ExUnit.Case
  doctest ThePlazaElixirChallenge

  test "greets the world" do
    assert ThePlazaElixirChallenge.hello() == :world
  end

  test "bye returns the correct farewell message" do
    assert ThePlazaElixirChallenge.bye() == "Goodbye!"
  end
end
