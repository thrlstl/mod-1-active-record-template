# create seed data here!

Dog.destroy_all
DogWalker.destroy_all
Walk.destroy_all

matthew = DogWalker.create(name: "Matthew", favorite_breed: "Yorkie")
samantha = DogWalker.create(name: "Samantha", favorite_breed: "Poodle")
steven = DogWalker.create(name: "Steven", favorite_breed: "No fave")

bear = Dog.create(name: "Bear", breed: "Yorkie", good_dog: 5>4)
spike = Dog.create(name: "Spike", breed: "German Shephard", good_dog: 5>4)
remi = Dog.create(name: "Remi", breed: "CatDog", good_dog: 3>4)

walk1 = Walk.create(length_in_minutes: 20, dog_id: bear.id, dog_walker_id: matthew.id)
walk2 = Walk.create(length_in_minutes: 30)
walk3 = Walk.create(length_in_minutes: 60)
walk4 = Walk.create(length_in_minutes: 60)

puts "Done 🌱"