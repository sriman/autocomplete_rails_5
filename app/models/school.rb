class School < ApplicationRecord
    paginates_per 10
    validates :title, uniqueness: true

    def self.name_like(query)
        where(["title ILIKE ?", "%#{query.strip}%"])
    end
end
