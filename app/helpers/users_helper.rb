module UsersHelper
  def heart_icon_helper(service)
    if current_user && current_user.authentications.find_by_auth_client_name(service).present?
      image_tag('heart-icon.png')
    else
      image_tag('heart-icon-gray.png')
    end
  end
end
