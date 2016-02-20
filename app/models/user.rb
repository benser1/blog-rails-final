class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :name, presence: true
  # validates :email, presence: true

  has_many :posts
  # has_many :comments, through: :posts 
  # has_many :posts, through: :comments
  has_many :comments

  enum role: [:normal]
  def guest?
    persisted?
  end




end ## class end
