class Huertum < ApplicationRecord
  has_many :plantums
  belongs_to :user
end
