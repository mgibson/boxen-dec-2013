class people::mgibson {
  include stdlib
  include sysctl
  include vlc
  include sublime_text_2
  include chrome
  #include macvim
  include autojump
  include caffeine
  include imagemagick
  include virtualbox
  include iterm2::dev
  include notational_velocity::nvalt
  include wget
  include postgresql
  include redis
  include mysql
  include foreman
  include nodejs
  include heroku

  # SpeakEZ Projects
  include projects::all

  # Homebrew packages to install
  package {
    [
      'bash-completion',
      'htop-osx'
    ]:
  }

  # Heroku accounts plugin
  #heroku::plugin { 'accounts':
   # source => 'ddollar/heroku-accounts'
  #}

}
