class Actor < ActiveRecord::Base
  has_many :reviews
  has_many :theaters, through: :reviews

    def most_fair_theater
        self.reviews.order(:rating).last.theater
    end

    def least_fair_theater
        self.reviews.order(:rating).first.theater
    end

    def remove_reviews(theater)
        self.reviews.each do |x|
             if x.id == theater.id
                x.delete_all 
             end
        end
    end
end