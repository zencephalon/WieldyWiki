get '/' do
  @luvs = Luv.all

  erb :'luv/index'
end