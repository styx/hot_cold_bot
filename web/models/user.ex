defmodule HotColdBot.User do
  use HotColdBot.Web, :model

  schema "users" do
    field :uid, :integer

    timestamps
  end

  @required_fields ~w(uid)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
