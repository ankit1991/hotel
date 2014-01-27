class User < ActiveRecord::Base
  # Validations
  validates :name, :user_name, presence: true
  validates :user_name, :uniqueness => { :case_sensitive => false, :allow_blank => true }
  validates :password, length: { minimum: 5 }

  # Associations
  has_one :listing, :dependent => :destroy

  accepts_nested_attributes_for :listing, allow_destroy: true

  has_secure_password
end
