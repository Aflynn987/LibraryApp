class ArticleObserver < ActiveRecord::Observer
  observe :article
  
  def after_create(article)
	Rails.logger.info("A new article with name #{article.title} has been created")
end
