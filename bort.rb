# bort.rb
# from Jeremy McAnally, Pratik Naik
# based on bort by Jim Neath

inside('vendor') do
  run "ln -s ~/commit-rails/rails rails"
end

# remove unnesesary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run 'rm -f public/javascripts/*'

# get jquery
run 'curl -L http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js > public/javascripts/jquery.min.js'
# get MU
run 'curl -L http://static.ak.fbcdn.net/connect/en_US/core.js > public/javascripts/mu.js'

=begin
plugin 'rspec', 
  :git => 'git://github.com/dchelimsky/rspec.git'
plugin 'rspec-rails', 
  :git => 'git://github.com/dchelimsky/rspec-rails.git'
plugin 'exception_notifier', 
  :git => 'git://github.com/rails/exception_notification.git'
plugin 'asset_packager', 
  :git => 'http://synthesis.sbecker.net/pages/asset_packager'
plugin 'role_requirement', 
  :git => 'git://github.com/timcharper/role_requirement.git'
gem 'mislav-will_paginate', :version => '~> 2.2.3', 
  :lib => 'will_paginate',  :source => 'http://gems.github.com'
 
=end
plugin 'restful-authentication', 
  :git => 'git://github.com/technoweenie/restful-authentication.git'
 
rake("gems:install", :sudo => true)

generate("authenticated", "user session")
#generate("rspec")


puts "all done."
