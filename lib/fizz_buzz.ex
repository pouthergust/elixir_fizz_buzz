defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    final_resut =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, final_resut}
  end

  defp handle_file({:error, reason}), do: {:error, "Erro ao ler o arquivo: #{reason}"}

  defp convert_and_evaluate_numbers(element) do
    element
    |> String.to_integer()
    |> valuate_numbers()
  end

  defp valuate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizz_buzz
  defp valuate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp valuate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp valuate_numbers(number), do: number
end
