# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks







desc "Visit the GitHub repo page"
task :open do
  sh "open https://github.com/XandoBit/MusicTop"
end


desc "Run server"
    task :server do
      sh "rackup"
end