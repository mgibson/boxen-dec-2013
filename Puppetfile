# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

# added
github "sysctl",         "1.0.0"

github "dnsmasq",    "1.0.0"
github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "go",         "1.0.0"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
#github "nvm",      "1.0.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
# from stephen

github "vlc",        "1.0.0"
github "icu4c",      "1.0.0"
github "redis",      "1.0.0"
github "heroku",     "1.0.0"
github "emacs",      "1.0.0"
github "sparrow",    "1.0.0"
github "propane",    "1.0.0"
github "postgresql", "2.2.2"
github "elasticsearch", "1.0.1"
github "macvim",     "1.0.0"
github "handbrake",  "1.0.0"
github "java",       "1.0.5"
github "python",     "1.0.1"
github "chrome",     "1.0.0"
github "virtualbox", "1.0.1"
github "caffeine",         "1.0.0"
github "things",         "1.0.0"
github "sublime_text_2", "1.0.0"
#github "phantomjs",      "1.9.0"
github "imagemagick",    "1.2.1"
github "autojump",   "1.0.0"
github "iterm2",     "1.0.1"
github "notational_velocity", "1.1.0"
github "wget",       "1.0.0"

# it does seem we need this to import data from zeus on db create
github "mysql",      "1.0.0"
github "foreman", "1.0.0"

