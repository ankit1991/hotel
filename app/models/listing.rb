class Listing < ActiveRecord::Base
  # Validation
  validates :name, :available, :expires, presence: true
  validate :validate_expires

  # Association
  belongs_to :user

  # Private Methods
  def validate_expires
    if(expires && expires < Date.current)
      errors.add(:base, 'Please enter a Future Date')
    end
  end

end
