module ApplicationHelper
  def label_tag(name, additional_tags = "")
    "<span class='listing-label #{additional_tags}'>#{name}: </span>".html_safe
  end

  def value_tag(name, additional_tags = "")
    "<span class='listing-value #{additional_tags}'>#{name}</span>".html_safe
  end

  def is_active?(link)
    return "active" if params[:action] == link
  end

  def title(page_title)
     content_for :title, page_title
  end

  def description(page_description)
    content_for :description, truncate(page_description,255)
  end

  def keywords(page_keywords)
    content_for :keywords, truncate(page_keywords,255)
  end

  def site_image(image)
    content_for :site_image, image
  end
end
