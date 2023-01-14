class ArticleDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  def published_status
    if object.status == "published"
      content_tag :span, "Published", class: "label label-success"
    else
      content_tag :span, "Draft", class: "label label-warning"
    end
  end
end
