atom_feed :language => 'en-US' do |feed|
  feed.title @title
  feed.updated @updated

  @articles.each do |item|
    next if item.updated_at.blank?

    feed.entry( item ) do |entry|
      entry.url article_url(item.id)
      entry.title item.title
      entry.brief_description item.brief_description, :type => 'html'
      entry.brief_description item.brief_description, :type => 'html'
			entry.author_name item.author_name
			entry.more_link item.more_link
			entry.status item.active

      entry.updated(item.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")) 

    end
  end
end