# Default User Blueprint

User.blueprint do
  login                 { InternetForgery.user_name }
  display_name          { NameForgery.full_name }
  password              "password"
  password_confirmation "password"
end