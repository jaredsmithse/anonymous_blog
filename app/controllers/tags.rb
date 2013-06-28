get '/tag/:tag_id' do
	@tag = Tag.find(params[:tag_id]) 
	@tagged_posts = @tag.posts
	erb :posts_by_tag
end