class Book < ApplicationRecord
    has_many :rentals
    has_many :users, through: :rentals
    has_many :pictures, as: :imageable
    belongs_to :imageable, polymorphic: true
    #has_and_belongs_to_many :users
    validates :title, presence: true
    validates :description, absence: true, unless: :title?
    validates :description, length: { maximum: 100 }
end
