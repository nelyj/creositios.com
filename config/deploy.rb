# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'creositios.com'
set :repo_url, 'git@github.com:patojimenez/creositios.com.git'
#set :branch, proc { 'git rev-parse --abbrev-ref HEAD'.chomp }
set :branch, "master"
set :deploy_via, :copy
set :deploy_to, '/var/www/creositios.com'
set :scm, :git
set :pty, true
set :linked_dirs, %w{uploads}


namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app) do
      sudo "apache2ctl", "graceful", "-v"
    end
  end

end
