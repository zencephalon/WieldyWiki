get '/' do
  @luvs = Luv.all

  erb :'luv/index'
end

post '/luv' do
  p params
  @luv = Luv.create(params[:luv])

  erb :'luv/single', locals: {luv: @luv}, layout: false
end