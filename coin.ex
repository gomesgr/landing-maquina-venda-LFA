defmodule Coin do
  def receive_coin(amount) when amount <= 45 do
    case amount do
      45 -> IO.puts "Coca cola recebida!"
      _ -> IO.puts("Falta mais #{45-amount} dinheiros")
       receive_coin(send_message + amount)
    end
  end

  def receive_coin(amount) do
    IO.puts "Dinheiro comido"
  end

  def send_message() do
     valor = IO.gets("Digite uma quantidade: ")
     |> String.trim
     |> String.to_integer

    case valor do
      10 -> valor
      45 -> valor
      25 -> valor
      _ -> "Inválido"
     end    
  end

  def start() do
    valor = send_message
    case valor do
      "Inválido" -> IO.puts valor
      _ -> receive_coin(valor)
    end
  end
end

Coin.start()
