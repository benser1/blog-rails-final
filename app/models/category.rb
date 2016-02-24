class Category < ActiveRecord::Base
  before_validation { self.name = self.name.capitalize }

  has_many :posts
  validates :name, presence: true, uniqueness: true

  
  # def post_id=(ids)
  #   ids.each do |id|
  #     post = Post.find(id)
  #     posts << post
  #   end
  # end



end ## class end
