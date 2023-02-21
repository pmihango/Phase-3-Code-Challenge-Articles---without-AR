require 'pry'

require_relative 'article'
require_relative 'magazine'

class Author
attr_reader :name, :articles

@@all = []

    def initialize(name)
        @name = name
        @articles = []
        @@all << self
    end

    def self.all
        @@all
      end
    
     def add_article(magazine, title)
        new_article = Article.new(self, magazine, title) 
        @articles << new_article
        magazine.add_contributor(self)
    end

    def magazines
    @articles.map { |article| article.magazine}.uniq
    
    end
end