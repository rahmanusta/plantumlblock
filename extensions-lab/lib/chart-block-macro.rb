require_relative 'chart-block-macro/extension'

Extensions.register do
  if document.basebackend? 'html'
    block_macro ChartBlockMacro
  end
end
