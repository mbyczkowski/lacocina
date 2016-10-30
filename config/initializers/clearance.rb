Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = "reply@example.com"
  config.redirect_url = "/admin"
end

Clearance::PasswordsController.layout "login"
Clearance::SessionsController.layout "login"
Clearance::UsersController.layout "login"