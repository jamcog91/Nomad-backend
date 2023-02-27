class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :email, presence: true, uniqeness: true
    validates :password, presence: true
    validates :handle, presence: true
end
