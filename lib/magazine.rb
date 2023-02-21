require 'pry'

class Magazine

    attr_accessor :name, :category, :contributors

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @contributors = []
        @@all << self
    end

    def self.all
        @@all
    end


      def self.find_by_name(name)
        all.find { |magazine| magazine.name == name }
      end

      def add_contributor(author)
        @contributors << author
    end
    
 
      def article_titles
        Article.all.select { |article| article.magazine == self }.map { |article| article.title }
      end

      def contributing_authors
        contributors.select{ |author| author.articles.select { |article| article.magazine == self } .count >2}
    end
    

    def magazines
    @article.map { |article| article.magazine }.uniq

    end
end
         # def contributors
    #     Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    #   end
    #   def contributing_authors
    #     contributors.select { |author| author.articles.count > 2 }
    #   end