class Client < ApplicationRecord
    has_many :pets
    def petsCount
        self.pets.count
    end
end
