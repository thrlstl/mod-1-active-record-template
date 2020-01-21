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