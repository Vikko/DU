module ApplicationHelper
  def title(page_title)
    unless page_title.blank?
      content_for(:title) {"| " + page_title}
    end
  end

  def truncator(html, length, omission)
    if (html.blank? || html.class != String || (html.index("<p>").blank? || html.index("</p>", html.index("</p>")+4).blank?))
      return truncate_html(html, :length => length, :omission => omission)
    else
      start_tag = html.index("<p>") || 0
      end_tag = html.index("</p>",  html.index("</p>")+4) || html.length # hack to get the 2nd </p>
      return truncate_html(html[start_tag..end_tag+4], :length => length, :omission => omission)
    end
  end
end
