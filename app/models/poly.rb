class Poly < ApplicationRecord

  def self.search(search)
    where("name ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
  end

  #make sure the description can only be 140 characters
  validates :description, length: { maximum: 140 }
  
end
