source 'https://rubygems.org'

ruby '2.1.5'
# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'bcrypt'
gem 'sass'
gem 'haml'
gem 'activerecord', '>= 3.1', :require => 'active_record'
gem 'mysql2'

# Test requirements

# Padrino Stable Gem
gem 'padrino', '0.12.2'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.12.2'
# end

group :production do
  gem 'puma'
end

group :development do
  gem 'pry'
  gem 'rubocop'
end

# gem 'padrino-pipeline'
gem 'padrino-sprockets', :require => 'padrino/sprockets', :git => 'git://github.com/nightsailer/padrino-sprockets.git'
