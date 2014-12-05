# require_relative 'uml-block/extension'
RUBY_ENGINE == 'opal' ? (require 'uml-block/extension') : (require_relative 'uml-block/extension')
Extensions.register do
  block UmlBlock
end
