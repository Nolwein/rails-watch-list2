class List < ApplicationRecord
  has_many :bookmarks, dependant: :destroy
  has_many :movies, through: :bookmarks, dependant: :destroy

  validates :name, uniqueness: true
end
