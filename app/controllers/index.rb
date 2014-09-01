
# get '/' do
#   tree = Tree.first
#   @url = tree.url
#   @content = tree.branches.first.content
#   erb :hello
# end

# get '/*' do |url|
#   @tree = Tree.find_by(url: url)
#   erb :tree
# end
