get '/create' do 
	erb :create_post
end

post '/create' do 
	Post.create
end