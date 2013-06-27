get '/create' do 
	erb :create_post
end

post '/create' do 
	post = Post.create(params[:post])
	params[:tag][:titles].split(",").each do |tag|
		post.tags << Tag.find_or_create_by_title(tag.chomp)
	end
	redirect '/'
end

get '/post/:post_id' do 
	@post = Post.find_by_id(params[:post_id])
	erb :post_page
end


