module ApplicationHelper
  def gravatar_for(speaker, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(speaker.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: speaker.name, class: "gravatar")
  end
end
