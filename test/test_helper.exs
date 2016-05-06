ExUnit.start

Mix.Task.run "ecto.create", ~w(-r HotColdBot.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r HotColdBot.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(HotColdBot.Repo)

