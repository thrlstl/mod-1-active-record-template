# Active Record Template

0. Install gems: `bundle install`

1. Create a migration: `rake db:create_migration NAME=create_games`

2. Write the migration: 
  ```rb
  create_table :games do |t|
    t.string :title
    t.string :genre
    t.integer :price

    t.timestamps # created_at, updated_at
  end
  ```

3. Run the migration: `rake db:migrate`

4. Check your migrations: `rake db:migrate:status`

5. Create your Ruby class and inherit from ActiveRecord:

```rb
class Game < ActiveRecord::Base

end
```

6. Repeat 1-5 for all your classes

7. Create seed data in `db/seeds.rb` and run `rake db:seed`

8. Test your code in `rake console`


******************************
DOG WALKER READ ME
******************************

### DogWalker

- `DogWalker#initialize(name, favorite_breed)`
  - should initialize with a name (string) and favorite_breed (string)
- `DogWalker#name`
  - should return the name of the dog walker. _Should not_ be able to change after initialization.
- `DogWalker#favorite_breed`
  - should return the favorite breed of the dog walker. _Should_ be able to change after initialization.
- `DogWalker.all`
  - Returns an array of all DogWalker instances

#### Dog

- `Dog#initialize(name, breed, good_dog)`
  - should initialize with a name (string), a breed (string), and whether or not this dog is a good dog (boolean)
- `Dog#name`
  - should return the name of the dog. _Should not_ be able to change after initialization.
- `Dog#breed`
  - should return the breed of the dog. _Should not_ be able to change after initialization.
- `Dog#good_dog`
  - should return the dog's good dog status. _Should_ be able to change after initialization.
- `Dog.all`
  - Returns an array of all Dog instances

#### Walk

- `Walk#initialize(length_in_minutes, dog, dog_walker)`
  - should initialize with a length_in_minutes (integer), dog (`Dog` instance) and dog_walker (`DogWalker` instance)
- `Walk#length_in_minutes`
  - should return the length of the walk in minutes. _Should not_ be able to change after initialization.
- `Walk.all`
  - Returns an array of all Walk instances

### Object Relationship Methods

#### Walk

- `Walk#dog`
  - should return the `Dog` instance for this Walk.
- `Walk#dog_walker`
  - should return the `DogWalker` instance for this Walk.
  
#### DogWalker

- `DogWalker#walks`
  - returns an array of all the walks given by the DogWalker
- `DogWalker#dogs`
  - returns a **unique** array of all the dogs who been walked by the DogWalker

#### Dog

- `Dog#walks`
  - returns an array of all the walks that the Dog has taken
- `Dog#dog_walkers`
  - returns a **unique** array of all the dog walkers that the Dog received walks from

### Aggregate and Association Methods

#### Walk

- `Walk#happy_walker?`
  - should return true if the favorited_breed of the dog walker for this walk matches the breed of the dog for this walk, and false if it doesn't match
- `Walk#print_details`
  - should `puts` to the terminal a string representing this walk
  - the string should be formatted like this: `{dog walker name} walked {dog name} for {length} minutes`

#### DogWalker

- `DogWalker#give_walk(length_in_minutes, dog)`
  - takes a `dog` (an instance of the `Dog` class) and an `length_in_minutes` (integer) as arguments, and creates a new `Walk` instance associated with this dog walker and the given dog
- `DogWalker#length_of_all_walks`
  - returns an integer for the total length of all walks this dog walker has given
- `DogWalker.most_walks`
  - should return an instance of `DogWalker` which has given the most walks

#### Dog

- `Dog#take_walk(length_in_minutes, dog_walker)`
  - takes a `dog_walker` (an instance of the `DogWalker` class) and an `length_in_minutes` (integer) as arguments, and creates a new `Walk` instance associated with this dog and the given dog walker
- `Dog#print_walk_details`
  - should `puts` to the terminal a string for each of the dog's walks
  - each string should be formatted like this: `{dog walker name} walked {dog name} for {length} minutes`
- `Dog.good_dogs`
  - returns an array of all dog instances whose are good dogs