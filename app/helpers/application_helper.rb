module ApplicationHelper

def user_signed_in?
  request.env['warden'].authenticated?(:user)
end

end
