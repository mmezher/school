module UsersHelper
  def first_name(user)
    user.name.split(" ").first
  end

  def display_name(user)
    user.hide_last_name? ? first_name(user) : user.name
  end

  def has_admin_rights
	current_user.admin?
  end
end
