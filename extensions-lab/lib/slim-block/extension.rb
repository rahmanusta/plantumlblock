require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include ::Asciidoctor

# An extension that processes the contents of a block
# as a Slim template.
#
# Usage
#
#   [slim]
#   --
#   p Hello, World!
#   ul
#     li red
#     li green
#     li blue
#   --
#
class SlimBlock < Extensions::BlockProcessor
  use_dsl

  named :slim
  on_context :open
  parse_content_as :raw

  def process parent, reader, attrs

    html = %(<div><strong>#{attrs['name']}</strong></div>
	<img src="#{attrs['src']}">
	<div><b>Content:</b> #{reader}</div>)

    # QUESTION should we allow attribute references in the slim source?
    create_pass_block parent, html, attrs, subs: nil
  end
end
