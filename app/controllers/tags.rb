get '/tag/:tag' do
	@tag = Tag.find_by_title(params[:tag]) 
	@tagged_posts = tag.posts
	erb :posts_by_tag
end