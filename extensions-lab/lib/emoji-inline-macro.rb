#require_relative 'emoji-inline-macro/extension'
RUBY_ENGINE == 'opal' ? (require 'emoji-inline-macro/extension') : (require_relative 'emoji-inline-macro/extension')

Asciidoctor::Extensions.register do
  if @document.basebackend? 'html'
    inline_macro EmojifyBlockMacro
  end
end
