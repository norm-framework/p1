Step /^Ensure that I have a role of (.+) in the system$/ do |role_name|
  role = IdentityService.get_role_by_name(role_name)

  Myself.set_role(role)
end


Step /^Click the Logout button if currently logged in$/ do
  Pages.current_page.logout_button.click if Myself.is_logged_in?
end


Step /^Fill in the (.+) field with my (?:username|password)$/ do |which|
  field_name = which
  value      = (which == username ? Myself.username : Myself.password)

  Pages.current_page.send("#{ field_name }_field").set value
end


Step /^Click the (.+) button$/ do |button_name|
  button_name = button_name.split.join('_').downcase

  Pages.current_page.send("#{ button_name }_button").click
end