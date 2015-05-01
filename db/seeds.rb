##############
# Users
##############
john = User.create!(name: "John Dees", username: "jdeesy", email: "j@d.com", password: "password", is_admin: true)

frank = User.create!(name: "Frank Fees", username: "frank", email: "f@f.com", password: "password")

paul = User.create!(name: "Paul Pees", username: "pauly", email: "p@p.com", password: "password")

#############
# Games
#############
andoid = Game.create!(name: "Andoid: Netfunner", description:"Card game were you fight the evil netfunner corps.", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 15, max_duration_of_game: 45)

agricocacola = Game.create!(name: "Agricocacola", description:"Worker playment game where you build a CocaCola factory", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 45, max_duration_of_game: 90)

life = Game.create!(name: "Life of Spring", description:"A survival game set in Spring, where evil plants are trying to kill you", min_number_of_players: 2, max_number_of_players: 6, min_duration_of_game: 60, max_duration_of_game: 120)

domination = Game.create!(name: "Domination", description:"Card building game where you kill all the other players", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 45, max_duration_of_game: 60)

battle = Game.create!(name: "Battlestar Scratchlatica", description:"Hidden traiter game, don't know who is who, don't even know if you are good or bad. I just don't know", min_number_of_players: 2, max_number_of_players: 4, min_duration_of_game: 45, max_duration_of_game: 60)

10.times do 
		Game.create!(name: rand(0..10).to_s + Faker::Company.name, description: Faker::Company.bs, min_number_of_players: rand(1..10), max_number_of_players: rand( 10..20 ), min_duration_of_game: 10, max_duration_of_game: 60)
end

100.times do 
	Game.create!(name: Faker::Company.name, description: Faker::Company.bs, min_number_of_players: rand(1..10), max_number_of_players: rand( 10..20 ), min_duration_of_game: 10, max_duration_of_game: 60)
end

##############
# Tags
##############
betral = Tag.create!(name: "Betral", description: "You betray people.", category: "mechanic")

builder = Tag.create!(name: "Builder", description: "A game where the player builds stuff.", category: "mechanic")

deck = Tag.create!(name: "Deck Builder", description: "Everone starts off the game at even footing, and build a deck to win the game.", category: "mechanic")

survival = Tag.create!(name: "Survival", description: "Survival type games are where the players are trying to survive harsh conditions.", category: "genre")

card = Tag.create!(name: "Card Game", description: "A game that main components are cards", category: "genre")

zombie = Tag.create!(name: "Zombie", description: "A zombie game is a game where the the theme is zombies...go figure.", category: "genre")

space = Tag.create!(name: "Space", description: "A space game is a game where the setting is in space", category: "genre")


# ##############
# # Tagging
# ##############
Tagging.create!(game: battle, tag: space)
Tagging.create!(game: battle, tag: betral)

Tagging.create!(game: domination, tag: card)
Tagging.create!(game: domination, tag: deck)
Tagging.create!(game: domination, tag: builder)

Tagging.create!(game: life, tag: zombie)
Tagging.create!(game: life, tag: betral)

Tagging.create!(game: agricocacola, tag: builder)

Tagging.create!(game: andoid, tag: card)
Tagging.create!(game: andoid, tag: deck)


##############
# UserGame
##############
UserGame.create!(user: john, game: life)
UserGame.create!(user: john, game: domination)
UserGame.create!(user: john, game: agricocacola)

UserGame.create!(user: frank, game: life)
UserGame.create!(user: frank, game: battle)

UserGame.create!(user: paul, game: battle)
UserGame.create!(user: paul, game: domination)
UserGame.create!(user: paul, game: life)
UserGame.create!(user: paul, game: agricocacola)
UserGame.create!(user: paul, game: andoid)


##############
# Comments
##############
Comment.create!(user: paul, game: battle, body: "Great Game")
Comment.create!(user: john, game: battle, body: "I liked this game")
Comment.create!(user: frank, game: life, body: "I have better")
Comment.create!(user: john, game: life, body: "BEST GAME EVERRRRR!!!")
Comment.create!(user: frank, game: agricocacola, body: "don't waste your time...")
Comment.create!(user: paul, game: domination, body: "Its pretty enjoyable")
Comment.create!(user: john, game: domination, body: "Great Game")


##############
# Ratings
##############
Rating.create!(user: frank, game: domination, score: 1)
Rating.create!(user: john, game: domination, score: 2)
Rating.create!(user: paul, game: domination, score: 3)
Rating.create!(user: paul, game: life, score: 4)
Rating.create!(user: john, game: life, score: 5)
Rating.create!(user: frank, game: battle, score: 1)
Rating.create!(user: paul, game: battle, score: 2)
Rating.create!(user: paul, game: andoid, score: 3)
Rating.create!(user: paul, game: agricocacola, score: 4)
Rating.create!(user: john, game: agricocacola, score: 5)