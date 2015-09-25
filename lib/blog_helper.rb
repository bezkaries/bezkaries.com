module BlogHelper
  MimeFormat ||= "application/vnd.github.%s+json".freeze
  # Public: Filters the change items out.  If a version is given, show only the
  # items related to that version.
  #
  # version - Optional String version key.
  #
  # Returns an Array of all 30 Nanoc::Item objects, sorted in reverse
  # chronological order.

  DefaultTimeFormat ||= "%B %-d, %Y".freeze
  def post_date(item)
    strftime item[:created_at]
  end

  def strftime(time, format = DefaultTimeFormat)
    attribute_to_time(time).strftime(format)
  end

  def posts_list()
    posts = @items.select { |item| item[:kind] == 'article' }
    posts.sort! do |x, y|
      attribute_to_time(y[:created_at]) <=> attribute_to_time(x[:created_at])
    end
  end

  def get_post_start(post)
    content = post.compiled_content
    if content =~ /\s<!-- more -->\s/
      content = content.partition('<!-- more -->').first +
      "<div class='read-more'><a href='#{post.path}'>Прочети повече &rsaquo;</a></div>"
    end
    return content
  end
end
