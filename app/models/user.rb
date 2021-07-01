class User < ApplicationRecord
  belongs_to :team
  has_many :user_roles
  has_many :roles, through: :user_roles
  accepts_nested_attributes_for :roles
  # before_save { self.email = email.downcase}
  before_save { self.name = name.titleize}
  before_save { self.username = username.downcase.strip}
  attr_accessor :remember_token, :active
  has_many :clocks
  has_many :services, through: :clocks
  has_many :articles
  validates :name, presence: true, length: {maximum: 50}
  validates :username, presence: true, length: {maximum: 30}, uniqueness: {case_sensitive: false}
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: false, length: {maximum: 50}, format: { with: VALID_EMAIL_REGEX }
      
  has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def active
    self.active = false
  end

   # Returns a random token.
   def User.new_token
    SecureRandom.urlsafe_base64
  end

  def user_admin?
    self.admin
  end
  

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

   # Returns true if the given token matches the digest.
   def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  
  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end 
  
  def group_name
    if self.user_groups.empty?
      name
    else
      self.user_groups.first.group.name

    end
  end
  
      
end
