require "pry"

class Waiter  
    attr_accessor :name, :yrs_of_experience 

    @@all = [] 

    def initialize(name, yrs_of_experience)
        @name = name 
        @yrs_of_experience = yrs_of_experience 
        @@all << self  
    end  

    def self.all
        @@all  
    end 

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip )
    end 

    def meals
        Meal.all.select do |person|
        person.waiter == self
        end  
    end 

    def best_tipper
        meals.max_by do |a| a.tip  
        end.customer    
    end
    
end 
 



