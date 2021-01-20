class Company < ApplicationRecord
    
    validates :name, :website , :domain_name , :address ,presence: true ,:uniqueness => true
    has_many :employees
   

end
