class Post < ActiveRecord::Base

  # validates :title, presence: true
  # validates :content, length: { minimum: 250 }  Why isn't this working here?

  belongs_to :user
  has_many :comments
  belongs_to :category

  # def category_name=(name)
  #   self.category = Category.find_or_create_by(name: name)
  # end






end ## class end
