set :laravel_roles, :all
set :laravel_artisan_flags, "--env=production"
set :laravel_server_user, "www-data"

# fix bug in capistrano-file-permissions
set :linked_dirs, []

set :file_permissions_paths, [
  'storage',
  'storage/cache',
  'storage/logs',
  'storage/meta',
  'storage/sessions',
  'storage/views',
]
set :file_permissions_users, [fetch(:laravel_server_user)]

