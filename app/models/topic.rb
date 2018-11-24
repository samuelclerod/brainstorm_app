class Topic < ApplicationRecord
    has_many :ideas
    belongs_to :user
    def username
        self.user.email.split('@').first.capitalize
    end
end
