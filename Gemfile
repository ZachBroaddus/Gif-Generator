source 'https://rubygems.org'

# ruby version
# ruby "2.4.2"
ruby '2.4.1'

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'

gem 'activesupport', '~>4.2.0'
gem 'activerecord', '~>4.2.0'

gem 'rake'

gem 'shotgun'

gem 'bcrypt'

gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec', '~>3.0'
  gem 'capybara'
end

group :test, :development do
  gem 'dotenv'
  gem 'factory_girl'

end
