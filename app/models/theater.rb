class Theater < ActiveRecord::Base
    has_many :reviews
    has_many :actors, through: :reviews

    def print_all_reviews 
       self.reviews.map do |x|
        puts x.print_review
        #"Review for #{x.theater.name} by #{x.actor.name}: #{x.rating}. #{x.comment}"
       end
    end

    def leave_review (actor, rating, comment)
        Review.create(rating: rating, comment: comment, theater_id: self.id, actor_id: actor.id)
    end

    def average_rating
        z= self.reviews.map do |x|
        x.rating
        end
        y= z.sum
        y/ z.length.to_f
    end

    
end