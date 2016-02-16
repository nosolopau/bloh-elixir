ExUnit.start

Mix.Task.run "ecto.create", ~w(-r BlohElixir.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r BlohElixir.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(BlohElixir.Repo)

