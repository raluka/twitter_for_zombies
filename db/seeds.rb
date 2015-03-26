# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Zombie.create(name: "Ash", graveyard: "Glen Heaven Memorial Cemetery")
Zombie.create(name: "Bob", graveyard: "Chapel Hill Cemetery")
Zombie.create(name: "Jim", graveyard: "My Father's Basement")
Weapon.create(name: "Hammer", strength: 1, zombie_id: 1)
Weapon.create(name: "Chainsaw", strength: 3, zombie_id: 2)
Weapon.create(name: "Other Zombie", strength: 10, zombie_id: 3)
Tweet.create(status: "Where I can get a good bite to eat?", zombie_id: 1)
Tweet.create(status: "My left arm is missing, but I don't", zombie_id: 2)
Tweet.create(status: "I just ate some delicious brains.", zombie_id: 3)
Tweet.create(status: "OMG, my fingers turned green. #FML", zombie_id: 1)