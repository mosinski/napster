module ApplicationHelper
def sortable(column, title = nil)
  title ||= column.titleize
  css_class = column == sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end
def avatar_url(user) 
  if user.avatar_url.present?
      user.avatar_url
    else
      default_url = "http://icons.iconarchive.com/icons/gakuseisean/ivista-2/256/Misc-User-icon.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}" 
end
end
end
