module UserHelper

  def gravatar_for(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def date_link(user)
    day = Date.today
    if (day.sunday? || day.saturday?)
      user.name
    else
     link_to user.name, user
    end
  end
end
