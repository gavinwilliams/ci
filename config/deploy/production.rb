set :domain,      "ci.fishrod.co.uk" # The domain name of the application
set :deploy_to,   "~/application/" # The path to deploy the application

set :user,        "ci.fishrod.co.uk" # The SSH user for your website
set :deploy_group, "ci.fishrod.co.uk"
set :use_sudo,    false # Tells capistrano not to run commands as root