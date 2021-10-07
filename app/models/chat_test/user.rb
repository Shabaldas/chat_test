module ChatTest
  class User < ApplicationRecord
    has_many :members
    has_many :conversations, through: :members

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  end
end
