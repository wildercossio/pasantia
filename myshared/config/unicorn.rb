root = '/var/www/myapp'
worker_processes 3
user 'documentos'
preload_app true
timeout 30
listen "#{root}/shared/sockets/unicorn.sock", :backlog => 64
pid "#{root}/shared/pids/unicorn.pid"
working_directory "#{root}/doc-reviewer-ror"
stdout_path "#{root}/shared/log/unicorn.log"
stderr_path "#{root}/shared/log/unicorn_error.log"
