module UsersHelper
  def heart_icon_helper(service)
    if current_user && current_user.authentications.find_by_auth_client_name(service).present?
      link_to image_tag('heart-icon.png'), "/auth/#{service}"
    else
      link_to image_tag('heart-icon-gray.png'), "/auth/#{service}"
    end
  end
end
