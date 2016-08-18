class User < ActiveRecord::Base
  has_many :reservations, dependent: :destroy
  has_many :access_permissions, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # Pundit roles definitions
  enum role: [:user, :teacher, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

end
