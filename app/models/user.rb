class User < ActiveRecord::Base
  has_many :collaborators
  has_many :packing_items

  has_secure_password

  validates :email, uniqueness: {case_sensitive: false}, presence: true
  validates :name, presence: true
  validates :password, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.downcase.strip)
    if user.authenticate(password)
      user
    else
      nil
    end
  end
end
