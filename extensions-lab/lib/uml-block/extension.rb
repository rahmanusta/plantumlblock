require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include ::Asciidoctor

class UmlBlock < Extensions::BlockProcessor
  use_dsl

  named :uml
  on_context :open
  parse_content_as :literal

  def process parent, reader, attrs
  #
   # html = %(<div><strong>#{attrs['name']}</strong></div>
	# <img src="#{attrs['src']}">
	# <div><b>Content:</b> #{reader.lines}</div>)

   imageUrl = nil

    %x{

        imageUrl = app.plantUml(#{reader.read});

     }

    html = %(<img src="#{imageUrl}">)

   create_pass_block parent, html, attrs, subs: nil
  end
end
