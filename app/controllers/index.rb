get '/' do
  p Tree.first
  p Tree.first.branches.first
  @content = Tree.first.branches.first.content
  erb :hello
end
