# libastag.gemspec

require 'rubygems'

spec = Gem::Specification.new do |spec|
  spec.name         = "libastag"
  spec.summary      = "A library for sending commands to a Nabastag(/tag) (see http://www.nabaztag.com)"
  spec.description  = %{
  This library is a full featured library for the Nabastag API (see http://api.nabaztag.com/docs/home.html).
  It provide also a minimal fake Violet Server for testing purpose.
  Main concepts are :
  * complete Rdoc documentations
  * Unit testing
  * Easy to use
  * provide multiples abstraction level (from low level, you can retrieve URL to get, or the sever's XML response)
  }

  spec.author       = "Alexandre Perrin"
  spec.email        = "kaworu@kaworu.ch"
  spec.homepage     = "http://libastag.kaworu.ch"

  spec.test_files       = Dir["test/*_test.rb"]
  spec.extra_rdoc_files = Dir["README", "LICENCE"]
  spec.files            = Dir["lib/**/*", "bin/*"] + spec.test_files + spec.extra_rdoc_files
  spec.version          = "0.0.1"
end

