class Review < ActiveRecord::Base
  belongs_to :actor
  belongs_to :theater

    def print_review
        puts "Review for #{self.theater.name} by #{self.actor.name}: #{self.rating}. #{self.comment}"
    end
    
    def delete_from_database
        self.destroy
    end
    
end