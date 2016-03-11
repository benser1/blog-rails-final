class Category < ActiveRecord::Base
  before_validation { self.name = self.name.capitalize }

  has_many :posts
  validates :name, presence: true, uniqueness: true



end ## class end
