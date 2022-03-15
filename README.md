# BankApp

Commanded (CQRS)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bank_app` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bank_app, "~> 0.1.0"}
  ]
end
```

Run and Up
```elixir
  mix deps.get
  iex -S mix
```

Test
Start the application and event handler processes:

```elixir
  {:ok, _pid} = EventApp.start_link()
  {:ok, _pid} = AccountBalanceHandler.start_link()
```

Finally, we can dispatch a command to open a new bank account:

```elixir
:ok = EventApp.dispatch(%OpenBankAccount{account_number: "CCC123457", initial_balance: 2_000})
```



Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/bank_app>.

