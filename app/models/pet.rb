class Pet < ApplicationRecord
  
  has_many :pet_histories
  belongs_to :client

  def historyCount
    self.pet_histories.count
   
  end

  def avgWeight
    self.pet_histories.average(:weight)
  end

  def avgHeight
    self.pet_histories.average(:height)
  end

  def maxWeight
    self.pet_histories.pluck(:weight).max
  end

  def maxHeight
    self.pet_histories.pluck(:height).max
  end

end
