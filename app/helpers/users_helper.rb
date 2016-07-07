module UsersHelper
	def avatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "ava.jpg?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
