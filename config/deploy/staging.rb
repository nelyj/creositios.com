set :stage, :staging

server 'creositios.com', roles: %w{web app db}

set :user, 'root'

set :ssh_options, {
   user: fetch(:user)
}