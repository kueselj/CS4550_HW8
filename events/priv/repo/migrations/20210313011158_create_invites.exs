defmodule Events.Repo.Migrations.CreateInvites do
  use Ecto.Migration

  def change do
    create table(:invites) do
      add :name, :string, null: false
      add :email, :string, null: false
      add :post_id, references(:posts, on_delete: :nothing), null: false
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end

  create index(:invites, [:post_id])
  create index(:invites, [:user_id])

  end
end
