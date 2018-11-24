class Idea < ApplicationRecord
  belongs_to :topic
  belongs_to :user
    def username
        self.user.email.split('@').first.capitalize
    end
end
