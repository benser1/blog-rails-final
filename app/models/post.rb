class Post < ActiveRecord::Base

  # validates :title, presence: true
  # validates :content, length: { minimum: 250 }  Why isn't this working here?

  belongs_to :user



end ## class end
