starship init fish | source

abbr --add start "sudo service nginx start; and sudo service mysql start; and sudo service php7.4-fpm start; and sudo service php8.1-fpm start; and sudo service apache2 start; and sudo service nginx status; and sudo service mysql status; and sudo service php7.4-fpm status; and sudo service php8.1-fpm status; and sudo service apache2 status"
abbr --add par "php artisan"
abbr --add flutter "cmd.exe /c flutter"
abbr --add dart "cmd.exe /c dart"

set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
pyenv rehash

export EDITOR='nvim'
export PATH="$HOME/.cargo/bin:$PATH"
