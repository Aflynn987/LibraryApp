class BookReview
  attr_accessor :title, :cover_image, :review, :rating, :analytics

  def initialize(title, cover_image, review)
    @title = title
    @cover_image = cover_image
    @review = review
    @rating = 0
    @analytics = { views: 0, thumbs_up: 0, thumbs_down: 0 }
  end

  def thumbs_up
    @rating += 1
    @analytics[:thumbs_up] += 1
  end

  def thumbs_down
    @rating -= 1
    @analytics[:thumbs_down] += 1
  end

  def track_view
    @analytics[:views] += 1
  end
end

