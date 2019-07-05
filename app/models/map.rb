class Map < ApplicationRecord
  before_create :add_remaining_data
  belongs_to :user

  def add_remaining_data
    add_center
  end

  def add_center
    self.center[0] = self.latitude
    self.center[1] = self.longitude
  end
end
