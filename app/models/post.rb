class Post < ActiveRecord::Base


  belongs_to :user
  has_many :comments
  belongs_to :category

end ## class end
