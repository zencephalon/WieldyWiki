require "json"

get '/' do
  @luvs = Luv.all
  @title = "BLAH"

  erb :'luv/index'
end

before '/luv/:id' do
  @luv = Luv.find(params[:id])
end

get '/luv/:id' do
  if params[:ajax]
    @luv.to_json
  else
    erb :'luv/single', locals: {luv: @luv}
  end
end

post '/luv' do
  p params
  @luv = Luv.create(params[:luv])

  erb :'luv/single', locals: {luv: @luv}, layout: false
end

delete '/luv/:id' do
  @luv.destroy

  redirect to("/")
end
