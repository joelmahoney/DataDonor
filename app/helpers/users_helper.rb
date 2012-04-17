module UsersHelper
  def heart_icon_helper(service)
    if current_user && current_user.authentications.find_by_auth_client_name(service).present?
      link_to image_tag('heart-icon.png'), "/auth/#{service}"
    else
      link_to image_tag('heart-icon-gray.png'), "/auth/#{service}"
    end
  end
  
  def import_refresh_helper(service)
    link = "/auth/#{service}"
    if current_user && current_user.authentications.find_by_auth_client_name(service).present?
      "Connected"
    else
      "<div class='btn-group'>#{link_to 'Connect', link, :class=>'btn btn-primary'}</div>"
    end
  end
  
  def last_import_helper(service)
  end
end
