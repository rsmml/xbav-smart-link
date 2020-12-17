if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_xbav-smart-link", domain: "xbav-smart-link.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_xbav-smart-link"
end
