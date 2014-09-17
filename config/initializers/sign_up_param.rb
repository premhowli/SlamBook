DeviseController.class_eval do
  def resource_params
    unless params[resource_name].blank?
      params.require(resource_name).permit(:email, :password, :password_confirmation, :remember_me, :fname, :username, :sex)
    end
  end
end
