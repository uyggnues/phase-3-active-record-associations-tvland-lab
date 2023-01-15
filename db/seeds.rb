
Actor.destroy_all
Show.destroy_all
Character.destroy_all

peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
thrones = Show.create(name: "Game of Thrones")
tyrion = Character.create(name: "Tyrion Lannister", actor: peter, show: thrones)

puts Character.count