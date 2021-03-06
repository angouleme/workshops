class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :firstname, :lastname

  has_many :reviews
  has_many :products

  #validates_presence_of :firstname
  #validates_presence_of :lastname

  def is_admin? 
  end

  def is_owner?(product)
   product.user == self
  end

end
