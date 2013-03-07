puts 'decorating base controller'
Spree::BaseController.class_eval do
  def spree_login_path
    '/site_admins/sign_in'
  end

  def spree_signup_path
    '/site_admins/sign_up'
  end

  def spree_logout_path
    '/site_admins/sign_out'
  end

  def spree_current_user
    current_admin
  end
end

