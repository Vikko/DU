module ApplicationHelper
  def truncator(html, length, omission)
    if html.index("<p>").blank? || html.index("</p>").blank?
      return html
    else
      return truncate_html(html[html.index("<p>")..html.index("</p>")+3], :length => length, :omission => omission)
    end
  end
end
