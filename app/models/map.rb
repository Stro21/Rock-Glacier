class Map < ApplicationRecord
  before_create :add_remaining_data
  belongs_to :user
  enum rock_glacier_type: [:rock_glacier, :relic, :intact, :no_rock_glacier]

  def add_remaining_data
    add_center
    add_rock_glacier_type
  end

  def add_center
    self.center[0] = self.latitude
    self.center[1] = self.longitude
  end

  def add_rock_glacier_type
    if self.rock_glacier_type.nil?
      self.rock_glacier_type = :no_rock_glacier
    end
  end
end
