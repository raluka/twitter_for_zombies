class Zombie < ActiveRecord::Base
  has_many :tweets
  has_many :weapons
  validates :name, presence: true,
      uniqueness: true,
      length: { minimum:  3 }

end
