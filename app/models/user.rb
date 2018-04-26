class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  enum role: [:user, :vip, :admin]

  after_initialize :set_default_role, :if => :new_record?
  validates_presence_of :email

  def set_default_role
    self.role ||= :user
  end

  def to_s
    "#{self.name}"
  end

end
