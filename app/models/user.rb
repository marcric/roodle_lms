class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_and_belongs_to_many :roles

  after_create :assign_default_role

  private
    def assign_default_role
<<<<<<< HEAD
      roles << Role.where(:title => "student").first
=======
      self.roles << Role.where(:title => "student").first
>>>>>>> 64f5edf36882575a3e0dff303ea42b5cdbd1ddc0
    end
end
