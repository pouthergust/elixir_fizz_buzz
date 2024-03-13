defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response =
        {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizz_buzz, :buzz, 23, :buzz, :fizz, :fizz_buzz]}

      assert FizzBuzz.build("numbers.txt") === expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expected_response = {:error, "Erro ao ler o arquivo: enoent"}

      assert FizzBuzz.build("invalid.txt") === expected_response
    end
  end
end
