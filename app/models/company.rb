class Company < ActiveRecord::Base
  validates :name, :password, :presence => true
  validates :password, :confirmation => true
  validates :username, :uniqueness => true

  attr_reader :password

  def password=(password)
    @password = password
  end
end