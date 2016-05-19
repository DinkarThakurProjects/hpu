# config valid only for current version of Capistrano
lock '3.5.0'

set :user, 'hpu'
set :application, 'hpu'
# set :repo_url, 'https://dinkarthakur@bitbucket.org/dinkarthakur/hpu.git'
# set :git_https_username, 'dinkarthakur'
# set :git_https_password, 'Palampur@1'
set :repo_url, 'git@bitbucket.org:dinkarthakur/hpu.git'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
 set :deploy_to, '/home/hpu/deployment/ruby/hpu'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
 set :log_level, :debug
# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
 set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
 set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets',
                                                'vendor/bundle', 'public/system','public/uploads')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  # desc "reload the database with seed data"
  # task :seed do
  #   run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  # end
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
       within release_path do
      #   desc "reload the database with seed data"
      #   execute :rake, 'cache:clear'
       #   execute :rake, 'db:seed RAILS_ENV=production'
      end
    end
  end

end
