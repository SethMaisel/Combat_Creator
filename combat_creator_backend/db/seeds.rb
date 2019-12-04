# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sequence.destroy_all
Fight.destroy_all
Character.destroy_all
Weapon.destroy_all
Move.destroy_all
User.destroy_all

user1 = User.create(username: "Seth", password_digest: "password1")
user2 = User.create(username: "Freddy Fighter", password_digest: "password2")

fight1 = Fight.create(name: "R&J one", user: user1)
fight2 = Fight.create(name: "R&J two", user: user1)
fight3 = Fight.create(name: "Lear one", user: user1)
fight4 = Fight.create(name: "Musketeers one", user: user2)
fight5 = Fight.create(name: "Musketeers two", user: user2)

mercutio = Character.create(name: "Mercutio")
tybalt = Character.create(name: "Tybalt")
romeo = Character.create(name: "Romeo")
edmund = Character.create(name: "Edmund the Bastard")
edward = Character.create(name: "Mad Tom")
athos = Character.create(name: "Athos")
porthos = Character.create(name: "Porthos")
aramis = Character.create(name: "Aramis")
rochefort = Character.create(name: "Rochefort")

unarmed = Weapon.create(name: "Unarmed")
single_sword = Weapon.create(name: "Single Sword")
broadsword = Weapon.create(name: "Broadsword")
rapier_and_dagger = Weapon.create(name: "Rapier and Dagger")
small_sword = Weapon.create(name: "Small Sword")
quarterstaff = Weapon.create(name: "Quarterstaff")
sword_and_shield = Weapon.create(name: "Sword and Shield")
knife = Weapon.create(name: "Knife")

move1 = Move.create(action: "attack", line: "High-outside", technique: "Cut")
move2 = Move.create(action: "attack", line: "High-inside", technique: "Cut")
move3 = Move.create(action: "attack", line: "low-outside", technique: "thrust")
move4 = Move.create(action: "attack", line: "low-inside", technique: "thrust")
move5 = Move.create(action: "attack", line: "head", technique: "Cut")
move6 = Move.create(action: "defense", line: "High-outside", technique: "parry")
move7 = Move.create(action: "defense", line: "High-inside", technique: "parry")
move8 = Move.create(action: "defense", line: "low-outside", technique: "beat-parry")
move9 = Move.create(action: "defense", line: "low-inside", technique: "beat-parry")
move10 = Move.create(action: "defense", line: "head", technique: "hanging-parry")
move11 = Move.create(action: "defense", line: "upstage", technique: "dodge")

sequence1 = Sequence.create(fight: fight1, character: mercutio, weapon: single_sword, move: move1)
sequence2 = Sequence.create(fight: fight1, character: tybalt, weapon: single_sword, move: move6)
sequence3 = Sequence.create(fight: fight2, character: romeo, weapon: single_sword, move: move4)
sequence4 = Sequence.create(fight: fight2, character: tybalt, weapon: knife, move: move11)
sequence5 = Sequence.create(fight: fight3, character: edmund, weapon: rapier_and_dagger, move: move5)
sequence6 = Sequence.create(fight: fight3, character: edward, weapon: broadsword, move: move10)
sequence7 = Sequence.create(fight: fight4, character: athos, weapon: single_sword, move: move2)
sequence8 = Sequence.create(fight: fight4, character: porthos, weapon: single_sword, move: move1)
sequence9 = Sequence.create(fight: fight4, character: rochefort, weapon: single_sword, move: move11)
sequence10 = Sequence.create(fight: fight5, character: aramis, weapon: rapier_and_dagger, move: move3)
sequence11 = Sequence.create(fight: fight5, character: rochefort, weapon: rapier_and_dagger, move: move8)