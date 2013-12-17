set :application, 'landmhel'
set :repo_url, 'git@github.com:floridaelago/landmhel-website.git'

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.0.0-p247'
SSHKit.config.command_map[:rake] = "bundle exec rake"
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, '/home/deploy/landmhel'
# set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'
end
