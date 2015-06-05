class User < ActiveRecord::Base
  has_many :statuses
  # accepts_nested_attributes_for :status
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
  	first_name + " " +last_name
  	
  end
end
