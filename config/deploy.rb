# config valid only for current version of Capistrano
lock "3.8.2"
set :chruby_ruby, 'ruby-2.4.5'

set :application, "aact-admin"

# Default branch is :master
ask :branch, 'development'
set :rails_env, 'development'

namespace :deploy do
  after :deploy, 'finish_up'
end

desc 'Finalize the deployment'
task :finish_up do
  on roles(:app) do
    # create symlink to to the root directory containing aact static files
    source = ENV.fetch('AACT_STATIC_FILE_DIR','/aact-files')
    target = release_path.join('public/static')
    execute :ln, '-s', source, target
  end
end

# Default deploy_to directory is /var/www/my_app_name

# Default value for :format is :airbrussh.
#set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
set :format_options, command_output: true, log_file: "#{ENV.fetch('AACT_STATIC_FILE_DIR','/aact-files')}/logs/capistrano_aact_admin.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}

set :default_env, {
  'PATH'             => ENV['AACT_PATH'],
  'LD_LIBRARY_PATH' => ENV['LD_LIBRARY_PATH'],
  'APPLICATION_HOST' => 'localhost',
  'RUBY_VERSION' =>  'ruby 2.4.5',
  'GEM_HOME' => ENV['GEM_HOME'],
  'GEM_PATH' => ENV['GEM_PATH']
}

# Default value for keep_releases is 5
 set :keep_releases, 5
#
