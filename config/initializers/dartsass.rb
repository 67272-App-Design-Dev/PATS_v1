# Configure dartsass-rails to silence Bootstrap color function deprecation warnings
# These warnings are from Bootstrap 5.x and will be fixed in Bootstrap 6
# The warnings won't break the app until Dart Sass 3.0.0 is released

Rails.application.config.dartsass.builds = {
  "application.scss" => "application.css"
}

# Silence specific deprecation warnings from Bootstrap's internal code
Rails.application.config.dartsass.build_options << " --silence-deprecation=color-functions"
Rails.application.config.dartsass.build_options << " --silence-deprecation=import"
Rails.application.config.dartsass.build_options << " --silence-deprecation=global-builtin"
