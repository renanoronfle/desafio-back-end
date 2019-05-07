class Cnab < ApplicationRecord
  has_one_attached :file
  has_many :purchases
end
