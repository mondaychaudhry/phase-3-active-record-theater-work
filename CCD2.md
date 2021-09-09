### Migrations
#### actors Table
|  Column   |   Type   |
|  -------  | -------- |
| name      | String   |
#### theatres Table
|  Column   |   Type   |
|  -------  | -------- |
| name      | String   |
| members   | Integer  |

x.integer :rating
      x.string :comment
      x.integer :theater_id
      x.integer :actor_id

- A `Review` belongs to a `Theatre`, and a `Review` also belongs to a `Actor`. In
  your migration, create any columns your `reviews` table will need to establish
  these relationships.
- The `reviews` table should also have:
  - A `rating` column that stores an integer.
  - A `comment` column that stores a string.
  
### Aggregate and Association Methods
#### Review
- `Review#print_review`
  - should `puts` to the terminal a string formatted as follows: `Review for {insert Theatre name} by {insert actor name}: {insert review rating}. {insert review comment}`
- `Review#delete_from_database`
    - takes a `Review` (an instance of the `Review` class) and removes that instance of a `review`
    - you will have to delete that rows from the `reviews` table
#### Theatre
- `Theatre#print_all_reviews`
  - should `puts` to the terminal a string representing each review for this Theatre
  - each review should be formatted as follows: `Review for {insert Theatre name} by {insert actor name}: {insert review rating}. {insert review comment}`
- `Theatre#leave_review(actor, rating, comment)`
  - takes a `Actor` (an instance of the `Actor` class), a `rating` (integer), and a `comment` (string) as arguments, and creates a new `Review` in the database associated with this Theatre and the Actor
- `Theatre#average_rating`
  - returns a `float` representing the average rating for all reviews for this Theatre
  - remember that the average of something is the sum of all the values, divided by the number of values
    -- the average of 1,1,1  : (1 + 1 + 1)/3
    -- the average of 2,2,2  : (2 + 2 + 2)/3
    -- the average of 3,3,3  : (3 + 3 + 3)/3
    -- the average of 1,2,3,4: (1 + 2 + 3 + 4)/4
#### Actor
- `Actor#most_fair_theatre`
  - returns the Theatre instance that has the HIGHEST rating from this actor
- `Actor#least_favorite_theatre`
  - returns the Theatre instance that has the LOWEST rating from this actor
- `Actor#remove_reviews(theatre)`
  - takes a `Theatre` (an instance of the `Theatre` class) and removes _all_ of this actor’s reviews for that theatre
  - you will have to delete any rows from the `reviews` table associated with this actor and that theatre instance
