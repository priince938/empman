class Role < ApplicationRecord
    before_validation :normalize_name
    validates :name, presence: true
    has_many :employees
    private
    def normalize_name
        self.name = name.titleize
    end
end
