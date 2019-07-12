# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BusiApi.Repo.insert!(%BusiApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias BusiApi.Repo
alias BusiApi.Directory.Business
Repo.insert! %Business{name: "Company 4", description: "Short description 4...", tag: "IT, Software 4"}
Repo.insert! %Business{name: "Company 5", description: "Short description 5...", tag: "Marketing 5"}
Repo.insert! %Business{name: "Company 6", description: "Short description 6...", tag: "Accounting 6"}
