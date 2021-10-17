class User < ApplicationRecord
    has_many :reviews
    has_many :reviewed_events, through: :reviews, source: :event

    has_many :events

    validates :username, uniqueness: true, presence: true
    validates :email, presence: true

    has_secure_password


end