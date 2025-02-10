class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :isbn, presence: true, uniqueness: true
  
    has_many :borrowings
    has_many :users, through: :borrowings
  end