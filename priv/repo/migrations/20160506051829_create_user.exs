defmodule HotColdBot.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :uid, :integer

      timestamps
    end

  end
end
