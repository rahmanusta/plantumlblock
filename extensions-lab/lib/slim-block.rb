# require_relative 'slim-block/extension'
RUBY_ENGINE == 'opal' ? (require 'slim-block/extension') : (require_relative 'slim-block/extension')
Extensions.register do
  block SlimBlock
end
