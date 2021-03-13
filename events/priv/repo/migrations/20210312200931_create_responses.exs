defmodule Events.Repo.Migrations.CreateResponses do
  use Ecto.Migration

  def change do
    create table(:responses) do
      add :body, :text, null: false
      add :answer, :boolean, default: false, null: false
      add :post_id, references(:posts, on_delete: :nothing), null: false
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end

    create index(:responses, [:post_id])
    create index(:responses, [:user_id])
  end
end
