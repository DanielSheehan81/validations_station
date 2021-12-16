class Train < ApplicationRecord
    has_many :assignments
    has_many :platforms, through: :assignments
    validates :origin, :destination, presence: true
    validates :origin, :destination, length: {in: 3..24}
    validates :is_express, inclusion: [true, false]
end
