require_relative '../config/environment'


#create some authors
author1 = Author.new("Paul Mihango")
# puts author1.name
author2 = Author.new("Joan Wairimu")
author3 = Author.new("Declan Maina")

#create some magaiznes
magazine1 = Magazine.new("Kenya Engineer")
magazine2 = Magazine.new("The Playboy Magazine")
magazine3 = Magazine.new("Seeds of Gold")

# create some articles and associate them with authors and magazines
article1 = Article.new(author1, magazine1, "The Engineering behind Express Way")
article2 = Article.new(author2, magazine2, "Life and Times of Uncle Barney")
article3 = Article.new(author1, magazine3, "Policies behinf a Food Secure Kenya")
article4 = Article.new(author3, magazine2, "The future of social media in Africa")

# test some methods

puts author1.name
# should output "Paul Mihango"

puts magazine1.name
# should output "Kenya Engineer"

puts article1.magazine
# should output "The Engineering behind Express Way"
