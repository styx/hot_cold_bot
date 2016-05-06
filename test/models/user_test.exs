defmodule HotColdBot.UserTest do
  use HotColdBot.ModelCase

  alias HotColdBot.User

  @valid_attrs %{uid: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
