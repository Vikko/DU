module ApplicationHelper
  def truncator(text, length, omission)
    truncated = truncate(strip_tags(text), :length => length, :omission => omission)
    wordcount = truncated.scan(/\w+/).size
    truncated.split(/\w+/)
    truncated[wordcount-2]=""
    return truncated
  end
end
