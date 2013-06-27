get '/create' do 
	erb :create_post
end

post '/create' do 
	post = Post.create(params[:post])
	make_or_update_tags(params, post)
	redirect '/'
end

post '/update' do 
	post = Post.update_attributes(params[:post])
	make_or_update_tags(params, post)
	redirect '/'
end

get '/post/:post_id' do 
	set_current_post
	erb :post_page
end

get '/edit/:post_id' do
	set_current_post
	erb :edit_post 
end

def set_current_post
	@post = Post.find_by_id(params[:post_id])
end

def make_or_update_tags(args, post)
	args[:tag][:titles].split(",").each do |tag|
		post.tags << Tag.find_or_create_by_title(tag.chomp)
	end
end
