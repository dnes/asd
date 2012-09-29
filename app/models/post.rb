class Post < ActiveRecord::Base
  has_many :comments
  attr_accessible :author, :category, :content, :title

  validates :author, :presence => true
  validates :category, :presence => true
  validates :content, :presence => true
  validates :title, :presence => true

end
