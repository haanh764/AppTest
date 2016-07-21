module UsersHelper
	def avatar_for(user)
    gravatar_url = "ava.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar", size: "80")
  end
end
