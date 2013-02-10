class ApplicationController < ActionController::Base
  protect_from_forgery

 private

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
     page_path(:id => current_user.username)
    else
     super
    end
  end

  def after_sign_up_path_for(resource)
    if resource.is_a?(User)
     edit_page_path(:id => current_user.id, :new_user => 1)
    else
     super
    end
  end
end
