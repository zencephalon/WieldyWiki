require "json"

get '/' do
  @luvs = Luv.all
  @title = "BLAH"

  erb :'luv/index'
end

get '/luv/:id' do
  @luv = Luv.find(params[:id])

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