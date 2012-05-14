module ApplicationHelper
def sortable(column, title = nil)
  title ||= column.titleize
  css_class = column == sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end
def avatar_url(user)  
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase  
    "http://gravatar.com/avatar/#{gravatar_id}.png?d=http://manaflask.com/images/content/avatars/standard_avatar.png"  
  end
def avatar_url_small(user)  
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase  
    "http://gravatar.com/avatar/#{gravatar_id}.png?d=http://manaflask.com/images/content/avatars/standard_avatar.png?s=50"  
  end
end
