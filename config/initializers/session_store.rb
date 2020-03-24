if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_habit-trak', domain: 'frontend-domain'
else
  Rails.application.config.session_store :cookie_store, key: '_habit-trak'
end
