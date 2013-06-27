get '/create' do 
	erb :create_post
end

post '/create' do 
	post = Post.create(params[:post])
	params[:tag][:titles].split(",").each do |tag|
		post.tags << Tag.create({title: tag.chomp})
	end
	redirect '/'
end


