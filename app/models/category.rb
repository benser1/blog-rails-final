class Category < ActiveRecord::Base

  has_many :posts
  
  def post_ids=(ids)
    ids.each do |id|
      post = Post.find(id)
      posts << post
    end
  end



end ## class end
