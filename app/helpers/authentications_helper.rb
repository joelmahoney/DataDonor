module AuthenticationsHelper
  def import_refresh_helper(service)
    service_name = service.name.downcase
    link = "/auth/#{service_name}"
    if current_user && current_user.authentications.find_by_auth_client_name(service_name).present?
      link_to 'Disconnect', authentication_path(service), confirm: 'Disconnect this service (you can reconnect in the future)?', method: :delete
    else
      "<div class='btn-group'>#{link_to 'Connect', link, :class=>'btn btn-primary'}</div>"
    end
  end
  
  def last_import_helper(service)
  end
end
