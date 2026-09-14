# Local-development shim only, loaded by bin/serve via RUBYOPT. It is never
# part of the deployed GitHub Pages build.
#
# The github-pages gem pins Liquid 4.0.3, which still calls String#tainted?
# and #untaint. Ruby 3.2+ removed object tainting entirely, so define
# no-op versions to let `bundle exec jekyll serve` work on modern Ruby.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted? = false
    def untaint = self
    def taint = self
  end
end
