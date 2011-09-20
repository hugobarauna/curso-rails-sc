class Company < ActiveRecord::Base
  validates :name, :password, :presence => true
  validates :password, :confirmation => true
  validates :username, :uniqueness => true

  attr_reader :password

  def password=(password)
    @password = password

    if password.present?
      self.salt = generate_salt
      self.hashed_password = Company.encrypt_password(password, salt)
    end
  end

  def Company.authenticate(username, password)
    if company = Company.find_by_username(username)
      if company.hashed_password == encrypt_password(password, company.salt)
        return company
      end
    end
  end

  private
  def self.encrypt_password(password, salt)
    Digest::SHA1.hexdigest(password + "bazinga" + salt)
  end

  def generate_salt
    self.object_id.to_s + rand.to_s
  end
end