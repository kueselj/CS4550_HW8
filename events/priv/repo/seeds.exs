# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Events.Repo.insert!(%Events.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Events.Repo
alias Events.Users.User
alias Events.Posts.Post

alice = Repo.insert!(%User{name: "alice", email: "alice", photo_hash: ""})
bob = Repo.insert!(%User{name: "bob", email: "bob", photo_hash: ""})


Repo.insert!(%Post{user_id: alice.id, name: "event1", date: "10", description: "Alice says Hi!"})
Repo.insert!(%Post{user_id: bob.id, name: "event2", date: "10", description: "Bob says garblarg!"})
