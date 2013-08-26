require 'eventmachine'
require 'em-hiredis'
require 'rack'
require 'active_support/core_ext/string'

module Slanger
  Dir[File.expand_path('../slanger/*.rb', __FILE__)].each do |path|
    autoload File.basename(path, '.rb').camelize, path
  end
end

EM.epoll
EM.kqueue
