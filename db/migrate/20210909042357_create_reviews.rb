class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |x|
      x.integer :rating
      x.string :comment
      x.integer :theater_id
      x.integer :actor_id
    end
  end
end
