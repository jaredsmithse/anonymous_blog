class Post < ActiveRecord::Base  
	validates :body, :presence => true
	validates :title, :presence => true
	
	has_many :tag_posts
	has_many :tags, :through => :tag_posts
end
