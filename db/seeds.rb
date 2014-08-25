author = Author.create(name: "zen", password: "mindful")
tree = author.trees.create(url: "index")
tree.branches.create(content: "Welcome, I luv U", author: author)