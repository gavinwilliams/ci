set :application, "continuousintegration" # The application name

require 'capistrano/ext/multistage'
require 'capistrano-offroad'

set :stages, %w(production)
set :default_stage, "production"

offroad_modules 'defaults'

set :repository,  "git@github.com:gavinwilliams-fishrod/ci.git" # The location of the git repo, this is the read-only url
set :scm,         :git # Tells capistrano to use GIT
set :branch,      "master"  # Tells capistrano which branch to use
set :deploy_via,  :rsync_with_remote_cache # Tells capistrano to deploy via rsync
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, `subversion` or `none`

set :local_cache, '/tmp/ci/' # Set this to a directory where you would like to store the rsync cache

role(:web) { domain }                         # Your HTTP server, Apache/etc
role(:app)  { domain }                     # This may be the same as your `Web` server
role(:db) { domain }       # This is where Rails migrations will run

set  :keep_releases,  5 # Tells capistrano how many releases to keep