class User < ActiveRecord::Base
    has_many :workouts
    has_many :skillsets
    
    validates :username, presence: true, 
            uniqueness: {case_sensitive: false}, 
            length: { in: 5...25 }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
            uniqueness: {case_sensitive: false}, 
            format: {with: VALID_EMAIL_REGEX },
            length: { maximum: 100 }
    validates :name, presence: true
end
