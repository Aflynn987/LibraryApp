class ReviewSearchGem
  def self.search(query)
    Article.where("title LIKE ?", "%#{query}%")
  end
end